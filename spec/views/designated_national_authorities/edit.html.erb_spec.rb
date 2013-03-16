require 'spec_helper'

describe "designated_national_authorities/edit" do
  before(:each) do
    @designated_national_authority = assign(:designated_national_authority, stub_model(DesignatedNationalAuthority,
      :project_id => 1,
      :entity_id => 1
    ))
  end

  it "renders the edit designated_national_authority form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => designated_national_authorities_path(@designated_national_authority), :method => "post" do
      assert_select "input#designated_national_authority_project_id", :name => "designated_national_authority[project_id]"
      assert_select "input#designated_national_authority_entity_id", :name => "designated_national_authority[entity_id]"
    end
  end
end
