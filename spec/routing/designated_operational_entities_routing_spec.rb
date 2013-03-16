require "spec_helper"

describe DesignatedOperationalEntitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/designated_operational_entities").should route_to("designated_operational_entities#index")
    end

    it "routes to #new" do
      get("/designated_operational_entities/new").should route_to("designated_operational_entities#new")
    end

    it "routes to #show" do
      get("/designated_operational_entities/1").should route_to("designated_operational_entities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/designated_operational_entities/1/edit").should route_to("designated_operational_entities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/designated_operational_entities").should route_to("designated_operational_entities#create")
    end

    it "routes to #update" do
      put("/designated_operational_entities/1").should route_to("designated_operational_entities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/designated_operational_entities/1").should route_to("designated_operational_entities#destroy", :id => "1")
    end

  end
end
