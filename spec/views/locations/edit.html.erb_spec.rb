require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :project_id => "MyString",
      :lat => 1.5,
      :lng => 1.5,
      :region => "MyString",
      :sub_region => "MyString",
      :country => "MyString",
      :province => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_project_id", :name => "location[project_id]"
      assert_select "input#location_lat", :name => "location[lat]"
      assert_select "input#location_lng", :name => "location[lng]"
      assert_select "input#location_region", :name => "location[region]"
      assert_select "input#location_sub_region", :name => "location[sub_region]"
      assert_select "input#location_country", :name => "location[country]"
      assert_select "input#location_province", :name => "location[province]"
    end
  end
end
