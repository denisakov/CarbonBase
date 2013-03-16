require 'spec_helper'

describe "consultants/show" do
  before(:each) do
    @consultant = assign(:consultant, stub_model(Consultant,
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
