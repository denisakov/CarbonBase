require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :cdm_id => "Cdm",
        :ref => "Ref",
        :title => "Title",
        :status => "Status",
        :methodology => "Methodology",
        :pr_type => "Pr Type",
        :sub_type => "Sub Type"
      ),
      stub_model(Project,
        :cdm_id => "Cdm",
        :ref => "Ref",
        :title => "Title",
        :status => "Status",
        :methodology => "Methodology",
        :pr_type => "Pr Type",
        :sub_type => "Sub Type"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdm".to_s, :count => 2
    assert_select "tr>td", :text => "Ref".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Methodology".to_s, :count => 2
    assert_select "tr>td", :text => "Pr Type".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Type".to_s, :count => 2
  end
end
