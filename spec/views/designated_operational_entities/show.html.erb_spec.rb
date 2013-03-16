require 'spec_helper'

describe "designated_operational_entities/show" do
  before(:each) do
    @designated_operational_entity = assign(:designated_operational_entity, stub_model(DesignatedOperationalEntity,
      :project_id => 1,
      :entity_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
