class CustomerController < ApplicationController
  def signup
    @customer = Customer.new
    @provinces = Province.all
    
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.save
    redirect_to root_path ,
    notice: "You have signed up successfully.."
    else
      render 'signup'
      flash[:notice]="Please try again"
    end

  end

  def signin
    @customer = Customer.new
  end

  def login
    @customer = Customer.find_by(params[:username])

    if @customer.exist?
      redirect_to root_path
    end
  end

  def signout
  end

  def customer_params
    params.require(:customer).permit(:username,:password,:firstname,:lastname,:address,:city,:email,:province_id)
  end
end
