class VehiclesController < ApplicationController
  def index
    @cars = Vehicle.all
  end

  def show
    @car = Vehicle.find(params[:id])
  end
end
