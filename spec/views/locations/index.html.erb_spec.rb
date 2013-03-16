require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :project_id => "Project",
        :lat => 1.5,
        :lng => 1.5,
        :region => "Region",
        :sub_region => "Sub Region",
        :country => "Country",
        :province => "Province"
      ),
      stub_model(Location,
        :project_id => "Project",
        :lat => 1.5,
        :lng => 1.5,
        :region => "Region",
        :sub_region => "Sub Region",
        :country => "Country",
        :province => "Province"
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Project".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Region".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Province".to_s, :count => 2
  end
end
