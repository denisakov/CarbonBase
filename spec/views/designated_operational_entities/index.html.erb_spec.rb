require 'spec_helper'

describe "designated_operational_entities/index" do
  before(:each) do
    assign(:designated_operational_entities, [
      stub_model(DesignatedOperationalEntity,
        :project_id => 1,
        :entity_id => 2
      ),
      stub_model(DesignatedOperationalEntity,
        :project_id => 1,
        :entity_id => 2
      )
    ])
  end

  it "renders a list of designated_operational_entities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
