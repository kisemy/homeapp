require "rails_helper"

RSpec.describe MgloansController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mgloans").to route_to("mgloans#index")
    end

    it "routes to #new" do
      expect(:get => "/mgloans/new").to route_to("mgloans#new")
    end

    it "routes to #show" do
      expect(:get => "/mgloans/1").to route_to("mgloans#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mgloans/1/edit").to route_to("mgloans#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mgloans").to route_to("mgloans#create")
    end

    it "routes to #update" do
      expect(:put => "/mgloans/1").to route_to("mgloans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mgloans/1").to route_to("mgloans#destroy", :id => "1")
    end

  end
end
