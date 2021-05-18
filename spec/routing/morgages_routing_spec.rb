require "rails_helper"

RSpec.describe MorgagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/morgages").to route_to("morgages#index")
    end

    it "routes to #new" do
      expect(:get => "/morgages/new").to route_to("morgages#new")
    end

    it "routes to #show" do
      expect(:get => "/morgages/1").to route_to("morgages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/morgages/1/edit").to route_to("morgages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/morgages").to route_to("morgages#create")
    end

    it "routes to #update" do
      expect(:put => "/morgages/1").to route_to("morgages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/morgages/1").to route_to("morgages#destroy", :id => "1")
    end

  end
end
