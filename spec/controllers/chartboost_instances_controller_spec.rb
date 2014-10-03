require 'rails_helper'

RSpec.describe ChartboostInstancesController, type: :controller do
  render_views

  # Se Faccio let! viene chiamato da solo, altrimenti il let senza ! viene chiamato solo se viene chiamato
  let!(:chartboost_instance) do
    create_list(:chartboost_instance, 10)
    create(:chartboost_instance, uuid: 112_233_44)
  end

  describe 'GET show' do
    describe 'with existing uuid' do
      it 'return the uuid chartboost instance and the time passed' do
        get :show, uuid: 112_233_44
        expect(response).to have_http_status 200
      end
    end

    describe 'with non existing uuid' do
      it 'return a bad request hader' do
        get :show, uuid: 7
        expect(response).to have_http_status 400
      end
    end
  end

  describe 'GET delete' do
    describe 'with existing uuid' do
      it 'delete correctly the instance in the db' do
        expect do
          get :delete, uuid: 11_223_344
        end.to change(ChartboostInstance, :count).by(-1)
      end
    end
    describe 'with non existing uuid' do
      it 'return a bad request hader' do
        get :delete, uuid: 7
        expect(response).to have_http_status 400
      end
    end
  end

  describe 'POST create' do
    describe 'with non duplicate uuid' do
      it 'creates a new ChartboostInstance' do
        expect do
          post :create, create_input_parameters('92846')
        end.to change(ChartboostInstance, :count).by(1)
        expect(response).to have_http_status 201
      end
    end

    describe 'with duplicate uuid params' do
      it 'update the chart_boost instance in the database' do
        expect do
          post :create, create_input_parameters
        end.to_not change(ChartboostInstance, :count)
        expect(response).to have_http_status 204
      end
    end
  end

  def create_input_parameters(uuid_duplicate = '11223344')
    {
      user_id: '10000',
      platform: 'platform',
      to_app_name: 'to_app_name',
      to_app_id: '1111',
      to_company_name: 'to_company_name',
      from_app_name: 'from_app_name',
      from_app_id: '2222',
      from_company_name: 'from_company_name',
      event_type: 'event_type',
      gaid: 'gaid',
      formatted_ifa: 'formatted_ifa',
      device_country_code: 'device_country_code',
      device_model: 'device_model',
      device_os: 'device_os_',
      device_language: 'device_language',
      device_type: 'device_type',
      to_store_id: '5555',
      from_store_id: '6666',
      to_bundle_id: '7777',
      from_bundle_id: '8888',
      side_of_event: 'side_of_event',
      uuid: uuid_duplicate,
      campaign: 'campaign',
      campaign_id: '2222',
      campaign_type: 'campaign_type',
      macid: '3333',
      ifa: '4444',
      currency_name: 'currency_name',
      award_amount: 'award_amount',
      target_name: 'target_name',
      bid_type: 'bid_type'
    }
  end
end
