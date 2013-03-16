namespace :import do
  desc "imports data from external sources"
  task :data => :environment do
    require 'rubygems'
    require 'roo'
    require 'nokogiri'
    require 'open-uri'
  
  #This gives me all project locations and numbers  
  vcs_loc = Nokogiri::XML(open('http://www.vcsprojectdatabase.org/MAP/GetProject.asp'))
    
   vcs_pr = Nokogiri::HTML(open('https://vcsprojectdatabase2.apx.com/myModule/include/print.asp?printid=0'))
   
   #Iteration through the number at the end should give me all project pages
   https://vcsprojectdatabase2.apx.com/myModule/interactive.asp?Tab=Pipeline&a=3&i=8
   https://vcsprojectdatabase2.apx.com/myModule/Interactive.asp?Tab=Projects&a=2&i=78
   
   