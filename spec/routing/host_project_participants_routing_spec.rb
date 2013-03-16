require "spec_helper"

describe HostProjectParticipantsController do
  describe "routing" do

    it "routes to #index" do
      get("/host_project_participants").should route_to("host_project_participants#index")
    end

    it "routes to #new" do
      get("/host_project_participants/new").should route_to("host_project_participants#new")
    end

    it "routes to #show" do
      get("/host_project_participants/1").should route_to("host_project_participants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/host_project_participants/1/edit").should route_to("host_project_participants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/host_project_participants").should route_to("host_project_participants#create")
    end

    it "routes to #update" do
      put("/host_project_participants/1").should route_to("host_project_participants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/host_project_participants/1").should route_to("host_project_participants#destroy", :id => "1")
    end

  end
end
