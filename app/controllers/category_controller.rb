class CategoryController < ApplicationController

    def index
        
    end

    def results
        cat = Category.find(params[:category])
        @vehicles = cat.vehicles
    end
end
