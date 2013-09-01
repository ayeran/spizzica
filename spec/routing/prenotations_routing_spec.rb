require "spec_helper"

describe PrenotationsController do
  describe "routing" do

    it "routes to #index" do
      get("/prenotations").should route_to("prenotations#index")
    end

    it "routes to #new" do
      get("/prenotations/new").should route_to("prenotations#new")
    end

    it "routes to #show" do
      get("/prenotations/1").should route_to("prenotations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prenotations/1/edit").should route_to("prenotations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prenotations").should route_to("prenotations#create")
    end

    it "routes to #update" do
      put("/prenotations/1").should route_to("prenotations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prenotations/1").should route_to("prenotations#destroy", :id => "1")
    end

  end
end
