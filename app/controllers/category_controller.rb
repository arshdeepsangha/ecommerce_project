class CategoryController < ApplicationController

    def index
        
    end

    def results

        #add_breadcrumb "Category", :vehicles_path

        cat = Category.find(params[:category])
        @vehicles = cat.vehicles
    end
end
