class CustomerController < ApplicationController
  def signup
    @customer = Customer.new
  end

  def signin
  end

  def signout
  end
end
