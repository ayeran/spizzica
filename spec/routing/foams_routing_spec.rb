require "spec_helper"

describe FoamsController do
  describe "routing" do

    it "routes to #index" do
      get("/foams").should route_to("foams#index")
    end

    it "routes to #new" do
      get("/foams/new").should route_to("foams#new")
    end

    it "routes to #show" do
      get("/foams/1").should route_to("foams#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foams/1/edit").should route_to("foams#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foams").should route_to("foams#create")
    end

    it "routes to #update" do
      put("/foams/1").should route_to("foams#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foams/1").should route_to("foams#destroy", :id => "1")
    end

  end
end
