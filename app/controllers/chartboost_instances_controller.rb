class ChartboostInstancesController < ApplicationController

  # GET /chartboost_instances/1
  def show
    @chartboost_instance = ChartboostInstance.find(params[:id])

    render json: @chartboost_instance
  end

  # POST /chartboost_instances
  def create
    @chartboost_instance = ChartboostInstance.new(params[:chartboost_instance])

    if @chartboost_instance.save
      render json: @chartboost_instance, status: :created, location: @chartboost_instance
    else
      render json: @chartboost_instance.errors, status: :unprocessable_entity
    end
  end
end
