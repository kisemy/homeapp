require "rails_helper"

RSpec.describe GlentriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/glentries").to route_to("glentries#index")
    end

    it "routes to #new" do
      expect(:get => "/glentries/new").to route_to("glentries#new")
    end

    it "routes to #show" do
      expect(:get => "/glentries/1").to route_to("glentries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/glentries/1/edit").to route_to("glentries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/glentries").to route_to("glentries#create")
    end

    it "routes to #update" do
      expect(:put => "/glentries/1").to route_to("glentries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/glentries/1").to route_to("glentries#destroy", :id => "1")
    end

  end
end
