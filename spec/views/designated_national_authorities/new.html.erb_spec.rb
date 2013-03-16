require 'spec_helper'

describe "designated_national_authorities/new" do
  before(:each) do
    assign(:designated_national_authority, stub_model(DesignatedNationalAuthority,
      :project_id => 1,
      :entity_id => 1
    ).as_new_record)
  end

  it "renders new designated_national_authority form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => designated_national_authorities_path, :method => "post" do
      assert_select "input#designated_national_authority_project_id", :name => "designated_national_authority[project_id]"
      assert_select "input#designated_national_authority_entity_id", :name => "designated_national_authority[entity_id]"
    end
  end
end
