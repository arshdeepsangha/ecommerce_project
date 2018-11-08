class CustomerController < ApplicationController
  def signup
    @customer = Customer.new
    @provinces = Province.all
    
  end

  def create
    @customer = Customer.create(customer_params)
    @customer.save
    flash[:notice]="You have signed up successfully.."
    redirect_to root_path
  end

  def signin
  end

  def signout
  end

  def customer_params
    params.require(:customer).permit(:username,:password,:firstname,:lastname,:address,:city,:email,:province_id)
  end
end
