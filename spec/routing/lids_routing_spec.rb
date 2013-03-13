require "spec_helper"

describe LidsController do
  describe "routing" do

    it "routes to #index" do
      get("/lids").should route_to("lids#index")
    end

    it "routes to #new" do
      get("/lids/new").should route_to("lids#new")
    end

    it "routes to #show" do
      get("/lids/1").should route_to("lids#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lids/1/edit").should route_to("lids#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lids").should route_to("lids#create")
    end

    it "routes to #update" do
      put("/lids/1").should route_to("lids#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lids/1").should route_to("lids#destroy", :id => "1")
    end

  end
end
