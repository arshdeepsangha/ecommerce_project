class VehiclesController < ApplicationController

    #add_breadcrumb "home", :welcome_path
    #add_breadcrumb "deals", :deals_path

  def index

    #add_breadcrumb "All Vehicles", :vehicles_path

    @cars = Vehicle.all.page params[:page]
  end

  def show

    @car = Vehicle.find(params[:id])

    #add_breadcrumb "#{@car.model}", :vehicle_path

  end
end
