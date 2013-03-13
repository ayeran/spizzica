require "spec_helper"

describe AromasController do
  describe "routing" do

    it "routes to #index" do
      get("/aromas").should route_to("aromas#index")
    end

    it "routes to #new" do
      get("/aromas/new").should route_to("aromas#new")
    end

    it "routes to #show" do
      get("/aromas/1").should route_to("aromas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aromas/1/edit").should route_to("aromas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aromas").should route_to("aromas#create")
    end

    it "routes to #update" do
      put("/aromas/1").should route_to("aromas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aromas/1").should route_to("aromas#destroy", :id => "1")
    end

  end
end
