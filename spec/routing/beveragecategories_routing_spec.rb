require "spec_helper"

describe BeveragecategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/beveragecategories").should route_to("beveragecategories#index")
    end

    it "routes to #new" do
      get("/beveragecategories/new").should route_to("beveragecategories#new")
    end

    it "routes to #show" do
      get("/beveragecategories/1").should route_to("beveragecategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beveragecategories/1/edit").should route_to("beveragecategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beveragecategories").should route_to("beveragecategories#create")
    end

    it "routes to #update" do
      put("/beveragecategories/1").should route_to("beveragecategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beveragecategories/1").should route_to("beveragecategories#destroy", :id => "1")
    end

  end
end
