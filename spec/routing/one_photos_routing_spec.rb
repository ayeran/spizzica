require "spec_helper"

describe OnePhotosController do
  describe "routing" do

    it "routes to #index" do
      get("/one_photos").should route_to("one_photos#index")
    end

    it "routes to #new" do
      get("/one_photos/new").should route_to("one_photos#new")
    end

    it "routes to #show" do
      get("/one_photos/1").should route_to("one_photos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/one_photos/1/edit").should route_to("one_photos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/one_photos").should route_to("one_photos#create")
    end

    it "routes to #update" do
      put("/one_photos/1").should route_to("one_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/one_photos/1").should route_to("one_photos#destroy", :id => "1")
    end

  end
end
