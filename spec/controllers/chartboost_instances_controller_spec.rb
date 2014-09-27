require 'rails_helper'

RSpec.describe ChartboostInstancesController, type: :controller do
  render_views

  let!(:chartboost_instance) do
    create_list(:chartboost_instance, 10)
  end

  describe 'GET show' do
    it 'assigns the requested chartboost_instance as @chartboost_instance' do
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new ChartboostInstance' do
        expect do
          post :create, chartboost_instance:
          {
            from: 'app_from',
            uuid: '22222222222',
            campaign: 'campaign_created',
            campaign_id: '44444444444',
            macid: '666666666666',
            to: 'test_adv_game',
            my_type: 'click'
          }
        end.to change(ChartboostInstance, :count).by(1)
        expect(response).to have_http_status 201
        expect(ChartboostInstance.last.to).to eq(json['to'])
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved chartboost_instance as @chartboost_instance' do
      end

    end
  end

end
