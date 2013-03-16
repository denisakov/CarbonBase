require 'spec_helper'

describe "designated_operational_entities/edit" do
  before(:each) do
    @designated_operational_entity = assign(:designated_operational_entity, stub_model(DesignatedOperationalEntity,
      :project_id => 1,
      :entity_id => 1
    ))
  end

  it "renders the edit designated_operational_entity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => designated_operational_entities_path(@designated_operational_entity), :method => "post" do
      assert_select "input#designated_operational_entity_project_id", :name => "designated_operational_entity[project_id]"
      assert_select "input#designated_operational_entity_entity_id", :name => "designated_operational_entity[entity_id]"
    end
  end
end
