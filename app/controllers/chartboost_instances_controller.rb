class ChartboostInstancesController < ApplicationController
  include ChartboostInstancesParameters
  def show
    return render if exists_uuid?
    head :not_found
  end

  def create
    if exists_uuid?
      update_instance
    elsif create_instance
      head :created
    else
      render_error
    end
  end

  def delete
    return if exists_uuid? && instance_by_uuid.destroy
    instance_by_uuid ? render_error : head(:not_found)
  end

  def ping
    render text: 'hello world'
  end

  private

  def chartboost_instance_params
    @params ||= params.permit(*all_parameters)
  end

  def render_error
    render json: { errors: @chartboost_instance.errors }, status: :unprocessable_entity
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
