require 'spec_helper'

describe "designated_national_authorities/index" do
  before(:each) do
    assign(:designated_national_authorities, [
      stub_model(DesignatedNationalAuthority,
        :project_id => 1,
        :entity_id => 2
      ),
      stub_model(DesignatedNationalAuthority,
        :project_id => 1,
        :entity_id => 2
      )
    ])
  end

  it "renders a list of designated_national_authorities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
