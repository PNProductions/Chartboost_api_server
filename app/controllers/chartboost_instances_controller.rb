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
      render json: { errors: @chartboost_instance.errors }, status: :bad_request
    end
  end

  def delete
    return if exists_uuid? && instance_by_uuid.destroy!
    head :bad_request
  end

  def ping
    render text: 'hello world'
  end

  private

  def chartboost_instance_params
    @params ||= params.permit(
          :user_id, :platform, :to_app_name, :to_app_id,
          :to_company_name, :from_app_name, :from_app_id,
          :from_company_name, :event_type, :gaid, :formatted_ifa,
          :device_country_code, :device_model, :device_os,
          :device_language, :device_type, :to_store_id,
          :from_store_id, :to_bundle_id, :side_of_event,
          :uuid, :campaign, :campaign_id, :macid, :ifa,
          :campaign_type, :from_bundle_id, :target_name, :bid_type,
          :currency_name, :award_amount)
  end

  def instance_by_uuid
    @chartboost_instance ||= ChartboostInstance.find_by_uuid(chartboost_instance_params[:uuid])
  end

  def exists_uuid?
    !instance_by_uuid.nil?
  end

  def create_instance
    @chartboost_instance ||= ChartboostInstance.create(chartboost_instance_params)
    @chartboost_instance.save
  end

  def update_instance
    if @chartboost_instance.update_attributes(chartboost_instance_params)
      head :no_content
    else
      head :unprocessable_entity
    end
  end
end
