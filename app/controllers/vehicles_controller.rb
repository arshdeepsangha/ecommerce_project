class VehiclesController < ApplicationController
  def index
    @cars = Vehicle.all.page params[:page]
  end

  def show
    @car = Vehicle.find(params[:id])
  end
end
