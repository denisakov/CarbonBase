require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :cdm_id => "Cdm",
      :ref => "Ref",
      :title => "Title",
      :status => "Status",
      :methodology => "Methodology",
      :pr_type => "Pr Type",
      :sub_type => "Sub Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdm/)
    rendered.should match(/Ref/)
    rendered.should match(/Title/)
    rendered.should match(/Status/)
    rendered.should match(/Methodology/)
    rendered.should match(/Pr Type/)
    rendered.should match(/Sub Type/)
  end
end
