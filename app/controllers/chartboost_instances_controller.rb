class ChartboostInstancesController < ApplicationController
  def show
    @chartboost_instance = ChartboostInstance.find(params[:id])
  end

  def create
    if exists_uuid?
      update_instance
    elsif create_instance
      head :created
    else
      head :bad_request
    end
  end

  private

  def chartboost_instance_params
    @params ||= params.require(:chartboost_instance).permit(
          :from, :uuid, :campaign,
          :campaign_id, :macid, :to, :ifa, :my_type)
  end

  def exists_uuid?
    @chartboost_instance ||= ChartboostInstance.find_by_uuid(chartboost_instance_params['uuid'])
  end

  def create_instance
    ChartboostInstance.create(chartboost_instance_params).save
  end

  def update_instance
    if @chartboost_instance.update_attributes(chartboost_instance_params)
      head :no_content
    else
      head :unprocessable_entity
    end
  end
end
