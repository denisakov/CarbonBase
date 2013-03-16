require 'spec_helper'

describe "host_project_participants/new" do
  before(:each) do
    assign(:host_project_participant, stub_model(HostProjectParticipant,
      :project_id => 1,
      :entity_id => 1
    ).as_new_record)
  end

  it "renders new host_project_participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => host_project_participants_path, :method => "post" do
      assert_select "input#host_project_participant_project_id", :name => "host_project_participant[project_id]"
      assert_select "input#host_project_participant_entity_id", :name => "host_project_participant[entity_id]"
    end
  end
end
