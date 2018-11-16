class ApplicationController < ActionController::Base

    protect_from_forgery with: :null_session

    

    rescue_from ActionController::RoutingError do |exception|
        logger.error 'Routing error occurred'
        render plain: '404 Not found', status: 404 
    end

    # def index
    #     add_breadcrumb "home", :root_path
    # end
end
