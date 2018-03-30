class VehiclesController < ApplicationController
  before_action :authenticate_user!
  helper_method :vehicles

  def index
    @vehicles = Vehicle.all
  end
end
