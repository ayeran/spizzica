require "spec_helper"

describe FoodcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/foodcategories").should route_to("foodcategories#index")
    end

    it "routes to #new" do
      get("/foodcategories/new").should route_to("foodcategories#new")
    end

    it "routes to #show" do
      get("/foodcategories/1").should route_to("foodcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foodcategories/1/edit").should route_to("foodcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foodcategories").should route_to("foodcategories#create")
    end

    it "routes to #update" do
      put("/foodcategories/1").should route_to("foodcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foodcategories/1").should route_to("foodcategories#destroy", :id => "1")
    end

  end
end
