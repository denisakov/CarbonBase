require "spec_helper"

describe DesignatedNationalAuthoritiesController do
  describe "routing" do

    it "routes to #index" do
      get("/designated_national_authorities").should route_to("designated_national_authorities#index")
    end

    it "routes to #new" do
      get("/designated_national_authorities/new").should route_to("designated_national_authorities#new")
    end

    it "routes to #show" do
      get("/designated_national_authorities/1").should route_to("designated_national_authorities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/designated_national_authorities/1/edit").should route_to("designated_national_authorities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/designated_national_authorities").should route_to("designated_national_authorities#create")
    end

    it "routes to #update" do
      put("/designated_national_authorities/1").should route_to("designated_national_authorities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/designated_national_authorities/1").should route_to("designated_national_authorities#destroy", :id => "1")
    end

  end
end
