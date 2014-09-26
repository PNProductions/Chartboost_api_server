class ChartboostInstancesController < ApplicationController
  # GET /chartboost_instances
  # GET /chartboost_instances.json
  def index
    @chartboost_instances = ChartboostInstance.all

    render json: @chartboost_instances
  end

  # GET /chartboost_instances/1
  # GET /chartboost_instances/1.json
  def show
    @chartboost_instance = ChartboostInstance.find(params[:id])

    render json: @chartboost_instance
  end

  # POST /chartboost_instances
  # POST /chartboost_instances.json
  def create
    @chartboost_instance = ChartboostInstance.new(params[:chartboost_instance])

    if @chartboost_instance.save
      render json: @chartboost_instance, status: :created, location: @chartboost_instance
    else
      render json: @chartboost_instance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chartboost_instances/1
  # PATCH/PUT /chartboost_instances/1.json
  def update
    @chartboost_instance = ChartboostInstance.find(params[:id])

    if @chartboost_instance.update(params[:chartboost_instance])
      head :no_content
    else
      render json: @chartboost_instance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chartboost_instances/1
  # DELETE /chartboost_instances/1.json
  def destroy
    @chartboost_instance = ChartboostInstance.find(params[:id])
    @chartboost_instance.destroy

    head :no_content
  end
end
