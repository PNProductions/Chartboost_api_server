require 'rails_helper'

RSpec.describe ChartboostInstancesController, type: :controller do
  render_views

  # Se Faccio let! viene chiamato da solo, altrimenti il let senza ! viene chiamato solo se viene chiamato
  let!(:chartboost_instance) do
    create_list(:chartboost_instance, 10)
    create(:chartboost_instance, uuid: '11223344')
  end

  describe 'GET show' do
    it 'assigns the requested chartboost_instance as @chartboost_instance' do
    end
  end

  describe 'POST create' do
    describe 'with non duplicate uuid' do
      it 'creates a new ChartboostInstance' do
        expect do
          post :create, chartboost_instance: create_input_parameters('92846')
        end.to change(ChartboostInstance, :count).by(1)
        expect(response).to have_http_status 200
        expect(ChartboostInstance.last.macid).to eq(json['instance']['macid'])
      end
    end

    describe 'with duplicate uuid params' do
      it 'update the chart_boost instance in the database' do
        expect do
          post :create, chartboost_instance: create_input_parameters
        end.to_not change(ChartboostInstance, :count)
        expect(response).to have_http_status 400
      end
    end

    describe 'with params missing' do
      it 'return a bad request header' do
      end
    end
  end

  def create_input_parameters(uuid_duplicate = '11223344')
    {
      from: 'app_from',
      uuid: uuid_duplicate,
      campaign: 'campaign_created',
      campaign_id: '44444444444',
      macid: '666666666666',
      to: 'test_adv_game',
      ifa: '99999999999999',
      my_type: 'click'
    }
  end
end
