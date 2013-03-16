require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :cdm_id => "MyString",
      :ref => "MyString",
      :title => "MyString",
      :status => "MyString",
      :methodology => "MyString",
      :pr_type => "MyString",
      :sub_type => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_cdm_id", :name => "project[cdm_id]"
      assert_select "input#project_ref", :name => "project[ref]"
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_status", :name => "project[status]"
      assert_select "input#project_methodology", :name => "project[methodology]"
      assert_select "input#project_pr_type", :name => "project[pr_type]"
      assert_select "input#project_sub_type", :name => "project[sub_type]"
    end
  end
end
