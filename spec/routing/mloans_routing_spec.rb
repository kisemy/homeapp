require "rails_helper"

RSpec.describe MloansController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mloans").to route_to("mloans#index")
    end

    it "routes to #new" do
      expect(:get => "/mloans/new").to route_to("mloans#new")
    end

    it "routes to #show" do
      expect(:get => "/mloans/1").to route_to("mloans#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mloans/1/edit").to route_to("mloans#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mloans").to route_to("mloans#create")
    end

    it "routes to #update" do
      expect(:put => "/mloans/1").to route_to("mloans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mloans/1").to route_to("mloans#destroy", :id => "1")
    end

  end
end
