require 'rails_helper'

RSpec.describe "ChartboostInstances", :type => :request do
  describe "GET /chartboost_instances" do
    it "works! (now write some real specs)" do
      get chartboost_instances_path
      expect(response.status).to be(200)
    end
  end
end
