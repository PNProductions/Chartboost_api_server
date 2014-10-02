class ChartboostInstancesController < ApplicationController
  def show
    return render if exists_uuid?
    head :bad_request
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

  def delete
    return if exists_uuid? && instance_by_uuid.destroy!
    head :bad_request
  end

  def ping
    render text: 'hello_world'
  end

  private

  def chartboost_instance_params
    @params ||= params.permit(
          :from, :uuid, :campaign,
          :campaign_id, :macid, :to, :ifa, :my_type)
  end

  def instance_by_uuid
    @chartboost_instance ||= ChartboostInstance.find_by_uuid(chartboost_instance_params[:uuid])
  end

  def exists_uuid?
    !instance_by_uuid.nil?
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
