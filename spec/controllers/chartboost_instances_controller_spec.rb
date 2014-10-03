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
        expect(response).to be_success
      end
    end

    describe 'with non existing uuid' do
      it 'return a bad request hader' do
        get :show, uuid: 7
        expect(response).to have_http_status 404
      end
    end
  end

  describe 'GET delete' do
    describe 'with existing uuid' do
      it 'delete correctly the instance in the db' do
        expect do
          get :delete, uuid: 11_223_344
        end.to change(ChartboostInstance, :count).by(-1)
        expect(response).to be_success
      end
    end
    describe 'with non existing uuid' do
      it 'return a bad request hader' do
        get :delete, uuid: 7
        expect(response).to have_http_status 404
      end
    end
    describe 'with existing uuid and destroy failing' do
      it 'return with a bad request' do
        allow_any_instance_of(ChartboostInstance).to receive(:destroy).and_return(false)
        get :delete, uuid: 112_233_44
        expect do
          get :delete, uuid: 11_223_344
        end.to_not change(ChartboostInstance, :count)
        expect(response).to have_http_status 422
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

    describe 'with non duplicate uuid and create failing' do
      it 'return with a unprocessable entity' do
        allow_any_instance_of(ChartboostInstance).to receive(:save).and_return(false)
        expect do
          post :create, create_input_parameters('92846')
        end.to_not change(ChartboostInstance, :count)
        expect(response).to have_http_status 422
      end
    end
  end

  def create_input_parameters(uuid_duplicate = '11223344')
    {
      user_id: '000000000000000000000000',
      platform: 'ios',
      to_app_name: 'Test_Advertiser_Game',
      to_app_id: '111111111111111111111111',
      to_company_name: 'Test+Advertiser',
      from_app_name: 'Test+Publisher+Game',
      from_app_id: '333333333333333333333333',
      from_company_name: 'Test+Publisher',
      event_type: 'click',
      gaid: '38400000-8cf0-11bd-b23e-10b96e40000d',
      formatted_ifa: 'formatted_ifa',
      device_country_code: 'US',
      device_model: 'iPhone',
      device_os: '6.1.3',
      device_language: 'en',
      device_type: 'iPhone5%2C2',
      to_store_id: '5555',
      from_store_id: '6666',
      to_bundle_id: 'com.cbtest.to',
      from_bundle_id: 'com.cbtest.from',
      side_of_event: 'advertiser',
      uuid: uuid_duplicate,
      campaign: 'Test Campaign',
      campaign_id: '444444444444444444444444',
      campaign_type: 'Direct+Deal',
      macid: '7777777777777777777777777777777777777777',
      ifa: '4444',
      currency_name: 'coins',
      award_amount: '10',
      target_name: 'Test+Target',
      bid_type: 'cpc'
    }
  end
end
