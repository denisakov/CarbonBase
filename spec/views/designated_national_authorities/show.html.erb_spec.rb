require 'spec_helper'

describe "designated_national_authorities/show" do
  before(:each) do
    @designated_national_authority = assign(:designated_national_authority, stub_model(DesignatedNationalAuthority,
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
