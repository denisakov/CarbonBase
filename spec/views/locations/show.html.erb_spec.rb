require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :project_id => "Project",
      :lat => 1.5,
      :lng => 1.5,
      :region => "Region",
      :sub_region => "Sub Region",
      :country => "Country",
      :province => "Province"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Region/)
    rendered.should match(/Sub Region/)
    rendered.should match(/Country/)
    rendered.should match(/Province/)
  end
end
