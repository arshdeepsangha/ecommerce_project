class OrderController < ApplicationController
  def index
    @orders = Order.all.where(user_id: current_user.id)
  end

  def show
    @order = Order.where(user_id: current_user.id).find(params[:id])
  rescue
    redirect_to order_index_path
  end
end
