require "rails_helper"

RSpec.describe ChartboostInstancesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chartboost_instances").to route_to("chartboost_instances#index")
    end

    it "routes to #show" do
      expect(:get => "/chartboost_instances/1").to route_to("chartboost_instances#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/chartboost_instances").to route_to("chartboost_instances#create")
    end

    it "routes to #update" do
      expect(:put => "/chartboost_instances/1").to route_to("chartboost_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chartboost_instances/1").to route_to("chartboost_instances#destroy", :id => "1")
    end

  end
end
