require 'spec_helper'

describe "HostProjectParticipants" do
  describe "GET /host_project_participants" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get host_project_participants_path
      response.status.should be(200)
    end
  end
end
