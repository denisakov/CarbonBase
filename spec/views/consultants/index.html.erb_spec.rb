require 'spec_helper'

describe "consultants/index" do
  before(:each) do
    assign(:consultants, [
      stub_model(Consultant,
        :project_id => 1,
        :entity_id => 2
      ),
      stub_model(Consultant,
        :project_id => 1,
        :entity_id => 2
      )
    ])
  end

  it "renders a list of consultants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
