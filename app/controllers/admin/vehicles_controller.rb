class Admin::VehiclesController < ApplicationController
  before_action :authenticate_admin!

  helper_method :vehicle, :vehicles
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicles = Vehicles.new(vehicles_params)
  end

  def create
    @vehicles = Vehicles.new(vehicles_params)
    vehicles_collection = @vehicles.save

    if vehicles_collection.status
      redirect_to admin_vehicles_path
    else
      flash[:errors] = vehicles_collection.errors

      render :new
    end
  end

  private

  def vehicles_params
    params.fetch(:vehicles, {}).permit!
  end
end
