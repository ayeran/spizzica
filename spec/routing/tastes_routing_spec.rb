require "spec_helper"

describe TastesController do
  describe "routing" do

    it "routes to #index" do
      get("/tastes").should route_to("tastes#index")
    end

    it "routes to #new" do
      get("/tastes/new").should route_to("tastes#new")
    end

    it "routes to #show" do
      get("/tastes/1").should route_to("tastes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tastes/1/edit").should route_to("tastes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tastes").should route_to("tastes#create")
    end

    it "routes to #update" do
      put("/tastes/1").should route_to("tastes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tastes/1").should route_to("tastes#destroy", :id => "1")
    end

  end
end
