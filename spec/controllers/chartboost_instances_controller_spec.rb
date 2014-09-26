require 'rails_helper'

RSpec.describe ChartboostInstancesController, :type => :controller do

  describe "GET show" do
    it "assigns the requested chartboost_instance as @chartboost_instance" do
      chartboost_instance = ChartboostInstance.create! valid_attributes
      get :show, {:id => chartboost_instance.to_param}, valid_session;
      expect(assigns(:chartboost_instance)).to eq(chartboost_instance)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ChartboostInstance" do
        expect {
          post :create, {:chartboost_instance => valid_attributes}, valid_session
        }.to change(ChartboostInstance, :count).by(1)
      end

      it "assigns a newly created chartboost_instance as @chartboost_instance" do
        post :create, {:chartboost_instance => valid_attributes}, valid_session
        expect(assigns(:chartboost_instance)).to be_a(ChartboostInstance)
        expect(assigns(:chartboost_instance)).to be_persisted
      end

      it "redirects to the created chartboost_instance" do
        post :create, {:chartboost_instance => valid_attributes}, valid_session
        expect(response).to redirect_to(ChartboostInstance.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved chartboost_instance as @chartboost_instance" do
        post :create, {:chartboost_instance => invalid_attributes}, valid_session
        expect(assigns(:chartboost_instance)).to be_a_new(ChartboostInstance)
      end

      it "re-renders the 'new' template" do
        post :create, {:chartboost_instance => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

end
