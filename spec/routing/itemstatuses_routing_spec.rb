require "spec_helper"

describe ItemstatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/itemstatuses").should route_to("itemstatuses#index")
    end

    it "routes to #new" do
      get("/itemstatuses/new").should route_to("itemstatuses#new")
    end

    it "routes to #show" do
      get("/itemstatuses/1").should route_to("itemstatuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itemstatuses/1/edit").should route_to("itemstatuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itemstatuses").should route_to("itemstatuses#create")
    end

    it "routes to #update" do
      put("/itemstatuses/1").should route_to("itemstatuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itemstatuses/1").should route_to("itemstatuses#destroy", :id => "1")
    end

  end
end
