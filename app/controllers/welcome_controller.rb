class WelcomeController < ApplicationController
  def catch_404
    raise ActionController::RoutingError.new(params[:path])
  end

  def index

  end
end
