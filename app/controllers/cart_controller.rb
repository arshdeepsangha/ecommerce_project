class CartController < ApplicationController
  before_action :initialize_session

  def create
    
    id = params[:vehicle_id].to_i

    session[:cars_cart] << id unless session[:cars_cart].include?(id)

   redirect_to action: "show"
    
  end

  def clear
    session[:cars_cart] = []
    redirect_to showcart_path
  end

  def show

    @cars_in_cart = Vehicle.find(session[:cars_cart])

  end


  def destroy
    id = params[:remove_id].to_i

    session[:cars_cart].delete(id)
    redirect_to showcart_path

  end

  def checkout

  end

  private 
  def initialize_session
    session[:cars_cart] ||= []
  end

end
