require "spec_helper"

describe MethodologiesController do
  describe "routing" do

    it "routes to #index" do
      get("/methodologies").should route_to("methodologies#index")
    end

    it "routes to #new" do
      get("/methodologies/new").should route_to("methodologies#new")
    end

    it "routes to #show" do
      get("/methodologies/1").should route_to("methodologies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/methodologies/1/edit").should route_to("methodologies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/methodologies").should route_to("methodologies#create")
    end

    it "routes to #update" do
      put("/methodologies/1").should route_to("methodologies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/methodologies/1").should route_to("methodologies#destroy", :id => "1")
    end

  end
end
