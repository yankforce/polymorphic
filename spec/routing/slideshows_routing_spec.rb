require "spec_helper"

describe SlideshowsController do
  describe "routing" do

    it "routes to #index" do
      get("/slideshows").should route_to("slideshows#index")
    end

    it "routes to #new" do
      get("/slideshows/new").should route_to("slideshows#new")
    end

    it "routes to #show" do
      get("/slideshows/1").should route_to("slideshows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/slideshows/1/edit").should route_to("slideshows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/slideshows").should route_to("slideshows#create")
    end

    it "routes to #update" do
      put("/slideshows/1").should route_to("slideshows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/slideshows/1").should route_to("slideshows#destroy", :id => "1")
    end

  end
end
