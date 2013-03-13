require "spec_helper"

describe BeerstylesController do
  describe "routing" do

    it "routes to #index" do
      get("/beerstyles").should route_to("beerstyles#index")
    end

    it "routes to #new" do
      get("/beerstyles/new").should route_to("beerstyles#new")
    end

    it "routes to #show" do
      get("/beerstyles/1").should route_to("beerstyles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beerstyles/1/edit").should route_to("beerstyles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beerstyles").should route_to("beerstyles#create")
    end

    it "routes to #update" do
      put("/beerstyles/1").should route_to("beerstyles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beerstyles/1").should route_to("beerstyles#destroy", :id => "1")
    end

  end
end
