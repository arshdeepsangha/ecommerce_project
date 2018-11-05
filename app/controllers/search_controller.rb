class SearchController < ApplicationController

    def index 

    end

    def results
        @vehicles = Vehicle.where('model LIKE ?', "%#{params[:q]}%")
    end
end
