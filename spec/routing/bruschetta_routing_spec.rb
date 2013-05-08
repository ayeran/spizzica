require "spec_helper"

describe BruschettaController do
  describe "routing" do

    it "routes to #index" do
      get("/bruschetta").should route_to("bruschetta#index")
    end

    it "routes to #new" do
      get("/bruschetta/new").should route_to("bruschetta#new")
    end

    it "routes to #show" do
      get("/bruschetta/1").should route_to("bruschetta#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bruschetta/1/edit").should route_to("bruschetta#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bruschetta").should route_to("bruschetta#create")
    end

    it "routes to #update" do
      put("/bruschetta/1").should route_to("bruschetta#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bruschetta/1").should route_to("bruschetta#destroy", :id => "1")
    end

  end
end
