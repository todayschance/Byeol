require "spec_helper"

describe FreesController do
  describe "routing" do

    it "routes to #index" do
      get("/frees").should route_to("frees#index")
    end

    it "routes to #new" do
      get("/frees/new").should route_to("frees#new")
    end

    it "routes to #show" do
      get("/frees/1").should route_to("frees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/frees/1/edit").should route_to("frees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/frees").should route_to("frees#create")
    end

    it "routes to #update" do
      put("/frees/1").should route_to("frees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/frees/1").should route_to("frees#destroy", :id => "1")
    end

  end
end
