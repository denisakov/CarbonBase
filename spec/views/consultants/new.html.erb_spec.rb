require 'spec_helper'

describe "consultants/new" do
  before(:each) do
    assign(:consultant, stub_model(Consultant,
      :project_id => 1,
      :entity_id => 1
    ).as_new_record)
  end

  it "renders new consultant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consultants_path, :method => "post" do
      assert_select "input#consultant_project_id", :name => "consultant[project_id]"
      assert_select "input#consultant_entity_id", :name => "consultant[entity_id]"
    end
  end
end
