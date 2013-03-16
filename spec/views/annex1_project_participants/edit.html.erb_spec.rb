require 'spec_helper'

describe "annex1_project_participants/edit" do
  before(:each) do
    @annex1_project_participant = assign(:annex1_project_participant, stub_model(Annex1ProjectParticipant,
      :project_id => 1,
      :entity_id => 1
    ))
  end

  it "renders the edit annex1_project_participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => annex1_project_participants_path(@annex1_project_participant), :method => "post" do
      assert_select "input#annex1_project_participant_project_id", :name => "annex1_project_participant[project_id]"
      assert_select "input#annex1_project_participant_entity_id", :name => "annex1_project_participant[entity_id]"
    end
  end
end
