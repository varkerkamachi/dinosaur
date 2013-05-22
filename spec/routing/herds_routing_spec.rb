require "spec_helper"

describe HerdsController do
  describe "routing" do

    it "routes to #index" do
      get("/herds").should route_to("herds#index")
    end

    it "routes to #new" do
      get("/herds/new").should route_to("herds#new")
    end

    it "routes to #show" do
      get("/herds/1").should route_to("herds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/herds/1/edit").should route_to("herds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/herds").should route_to("herds#create")
    end

    it "routes to #update" do
      put("/herds/1").should route_to("herds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/herds/1").should route_to("herds#destroy", :id => "1")
    end

  end
end
