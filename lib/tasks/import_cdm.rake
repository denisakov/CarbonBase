namespace :import_cdm do
  desc "imports data from external sources"
  task :data => :environment do
    require 'rubygems'
    require 'roo'
    require 'nokogiri'
    require 'open-uri'
    
    #Get coordinates (l) and reference number (rf)
    doc = Nokogiri::XML(open('http://cdm.unfccc.int/Projects/MapApp/projectsLocationAll.xml'))
    l = doc.xpath('//state/loc')
    rf = doc.xpath('//state/url')
     l.zip(rf).each do |x, z|
       y = x.to_s.delete "<loc>/"
       lat = y[0..y.index(',')-1]
       lng = y[y.index(',')+1..20]
       ref = z.to_s.delete "Projects/di?f=<ul>"
       location = Location.where(:ref => ref, :lat => lat, :lng => lng).first
       location ||= Location.create(:ref => ref, :lat => lat, :lng => lng)
     end
     
     #Fill in the methodology table
     pp = Excelx.new("meth.xlsx")
     2.upto(pp.last_row) do |line|
       n = pp.cell(line, 'A').strip
       t = pp.cell(line, 'B')
       meth ||= Methodology.create(:meth_title => t, :meth_number => n)
     end
    
    oo = Excelx.new("CDM.xlsx")
    2.upto(oo.last_row) do |line|
      c = oo.cell(line, 'A')
       if !oo.cell(line, 'B').blank?
         r = "%.4i" %oo.cell(line, 'B')
       else
         r = nil
       end
      t = oo.cell(line, 'C')
      s = oo.cell(line, 'I')
      ty = oo.cell(line, 'J')
      sty = oo.cell(line, 'K')
      re = oo.cell(line, 'AJ')
      #project = Project.where(:cdm_id => c, :ref => r, :title => t, :status => s, :methodology => m, :pr_type => ty, :sub_type => sty, :reg => re).first
      project ||= Project.create(:cdm_id => c, :ref => r, :title => t, :status => s, :pr_type => ty, :sub_type => sty, :reg => re)
      m = oo.cell(line, 'L')
      m = m.gsub(/[+]/, ' ').split
      m.each do |n|
        methodology =  Methodology.where(:meth_number => m[n.to_i]).first
        project.methodologies << methodology
      end
    end
    
    #Assigning reference numbers to those projects which don't have them yet, based on partial match of the title of the project
    name = doc.xpath('//state[@id="point"]/name')
    name.each do |x|
      n = x.inner_text
      refno = n[n.index(':')-4..n.index(':')-1]
      title_part = n[n.index(':')+2..n.index('(')-5]
      if Project.where("ref is ? AND title like ?", nil, "%#{title_part}%").exists? and Project.where("title like ?", "%#{title_part}%").count == 1
        project = Project.where("title like ?", "%#{title_part}%").first
        project.update_attributes(:ref => refno)
        puts "Assigned the referefnce number"
      end
    end
    
    #this part will give us the URL for the projects which have a reference number
    #this goes into the Projects table
    project = Project.where("ref is not ? AND pr_url is ?", nil, nil)
    project.each do |x|
      url = "http://cdm.unfccc.int/Projects/redirector?ref=" << x.ref
      x.update_attributes(:pr_url => url)
      puts "Reference number was assigned"
    end
        
    #Assign the foreign key to the Locations by matching the reference numbers to the projects
    pr = Project.where("ref is not ?", nil)
    pr.each do |x|
    loc = Location.where("ref is ? AND project_id is ?", x.ref, nil)
      loc.each do |y|
        y.update_attributes(:project_id => x.id)
        puts "Assigned the foreign id!"
      end
    end
    
    #Assign the region, sub-region and the country to the Locations
    1.upto(oo.last_row) do |line|
      r = oo.cell(line+1, 'D')
      sr = oo.cell(line+1, 'E')
      hc = oo.cell(line+1, 'F')
      p = oo.cell(line+1, 'H')
      loc =  Location.includes(:project).where("project_id = ? and country is ?", line, nil)
      loc.each do |x|
        x.update_attributes(:region => r, :sub_region => sr, :country => hc, :province => p)
        puts "Assigned a country to this location!"
      end
    end
  
    
  end  
end







