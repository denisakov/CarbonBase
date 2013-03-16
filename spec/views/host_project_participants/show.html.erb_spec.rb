require 'spec_helper'

describe "host_project_participants/show" do
  before(:each) do
    @host_project_participant = assign(:host_project_participant, stub_model(HostProjectParticipant,
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
