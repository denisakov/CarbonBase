require 'spec_helper'

describe "consultants/edit" do
  before(:each) do
    @consultant = assign(:consultant, stub_model(Consultant,
      :project_id => 1,
      :entity_id => 1
    ))
  end

  it "renders the edit consultant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => consultants_path(@consultant), :method => "post" do
      assert_select "input#consultant_project_id", :name => "consultant[project_id]"
      assert_select "input#consultant_entity_id", :name => "consultant[entity_id]"
    end
  end
end
