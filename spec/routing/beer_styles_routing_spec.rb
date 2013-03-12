require "spec_helper"

describe BeerStylesController do
  describe "routing" do

    it "routes to #index" do
      get("/beer_styles").should route_to("beer_styles#index")
    end

    it "routes to #new" do
      get("/beer_styles/new").should route_to("beer_styles#new")
    end

    it "routes to #show" do
      get("/beer_styles/1").should route_to("beer_styles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beer_styles/1/edit").should route_to("beer_styles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beer_styles").should route_to("beer_styles#create")
    end

    it "routes to #update" do
      put("/beer_styles/1").should route_to("beer_styles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beer_styles/1").should route_to("beer_styles#destroy", :id => "1")
    end

  end
end
