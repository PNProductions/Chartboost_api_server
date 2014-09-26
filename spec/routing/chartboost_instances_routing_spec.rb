require "rails_helper"

RSpec.describe ChartboostInstancesController, :type => :routing do
  describe "routing" do

    it "routes to #show" do
      expect(:get => "/chartboost_instances/1").to route_to("chartboost_instances#show", :id => "1", format: "json")
    end

    it "routes to #create" do

      
      expect(:post => "/chartboost_instances").to route_to("chartboost_instances#create", format: "json")
    end

  end
end
