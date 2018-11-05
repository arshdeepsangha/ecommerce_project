class SearchController < ApplicationController

    def index 

    end

    def results
        if params[:query_category][:category_id].empty?
            @vehicles = Vehicle.where('model LIKE ?', "%#{params[:q]}%")
        else
            category = Category.find(params[:query_category][:category_id])
            @vehicles = category.vehicles.where('model LIKE ?', "%#{params[:q]}%")
        end
    end
end
