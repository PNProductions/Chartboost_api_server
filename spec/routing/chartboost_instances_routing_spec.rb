require 'rails_helper'

RSpec.describe ChartboostInstancesController, type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: '/show_ad').to route_to('chartboost_instances#show')
    end

    it 'routes to #create' do
      expect(post: '/create_ad').to route_to('chartboost_instances#create')
    end

    it 'routes to #delete' do
      expect(get: '/delete_ad').to route_to('chartboost_instances#delete')
    end
  end
end
