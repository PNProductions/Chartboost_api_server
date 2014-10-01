class ChartboostInstancesController < ApplicationController
  def show
    @chartboost_instance = ChartboostInstance.find(params[:id])
  end

  def create
    @chartboost_instance = ChartboostInstance.create(chartboost_instance_params)
    # Se fallisce il save significa che ho un id duplicato
    render if @chartboost_instance.save
    head :bad_request unless @chartboost_instance.update_attributes(uuid: @chartboost_instance.uuid)
  end

  private

  def chartboost_instance_params
    params.require(:chartboost_instance).permit(
          :from, :uuid, :campaign,
          :campaign_id, :macid, :to, :ifa, :my_type)
  end
end
