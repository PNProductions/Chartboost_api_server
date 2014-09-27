class ChartboostInstancesController < ApplicationController
  def show
    @chartboost_instance = ChartboostInstance.find(params[:id])
  end

  def create
    @chartboost_instance = ChartboostInstance.create(chartboost_instance_params)

    if @chartboost_instance.save!
      render json: @chartboost_instance, status: :created
    else
      render json: @chartboost_instance.errors, status: :unprocessable_entity
    end
  end

  private

  def chartboost_instance_params
    params.require(:chartboost_instance).permit(
          :from, :uuid, :campaign,
          :campaign_id, :macid, :to, :my_type)
  end
end
