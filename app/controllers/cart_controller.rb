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

    number_of_cars = params[:vehicle_count].to_i
    @vehicles = []
    @quantities = []
    @total = 0


    number_of_cars.times do |i|

      @total += Vehicle.find(params["vehicle_id_#{i}".to_sym].to_i).price * params["quantity_#{i}".to_sym].to_i

      @vehicles << params["vehicle_id_#{i}".to_sym].to_i
      @quantities << params["quantity_#{i}".to_sym].to_i
    end

    @gst_value = 1
    if current_user.province.gst.present?
      @gst_value = current_user.province.gst
      @gst_value = @total.to_d * @gst_value/100
    end

    @pst_value = 1
    if current_user.province.pst.present?
      @pst_value = current_user.province.pst
      @pst_value = @total.to_d * @pst_value/100
    end

    @hst_value = 1
    if current_user.province.hst.present?
      @hst_value = current_user.province.hst
      @hst_value = @total.to_d * @hst_value/100
    end

    @taxes = 0
    @tax_info = "Taxes Charged According to " + current_user.province.name.to_s + "."

    if @gst_value == 1
      @taxes += 0
    else
      @taxes += @gst_value
      @gst_value = helper.number_to_currency(@gst_value)
      @tax_info += "\n" + "GST Charged : " + @gst_value.to_s + " at " + current_user.province.gst.to_s + "%."
    end

    if @pst_value == 1
      @taxes += 0
    else
      @taxes += @pst_value
      @pst_value = helper.number_to_currency(@pst_value)
      @tax_info += "\n" + "PST Charged : " + @pst_value.to_s + " at " + current_user.province.pst.to_s+ "%."
    end

    if @hst_value == 1
      @taxes += 0
    else
      @taxes += @hst_value
      @hst_value = helper.number_to_currency(@hst_value)
      @tax_info += "\n" +"HST Charged : " + @hst_value.to_s + " at " + current_user.province.hst.to_s+ "%."
    end


    @grand_total = @total + @taxes

    order = Order.create(quantity: number_of_cars , user_id: current_user.id , order_status_id: 1 ,total: @total ,taxes: @taxes ,tax_info: @tax_info ,grand_total: @grand_total)

    number_of_cars.times do |j|
      sold_price = Vehicle.find(@vehicles[j]).price
      LineItem.create(quantity: @quantities[j],total: sold_price ,vehicle_id: @vehicles[j],order: order)
      
    end
    session[:cars_cart] = []
    @order_last = Order.all

    
  end

  private 
  def initialize_session
    session[:cars_cart] ||= []
  end

  def helper
    @helper ||= Class.new do
      include ActionView::Helpers::NumberHelper
    end.new
  end

end
