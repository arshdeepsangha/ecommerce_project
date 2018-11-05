class FilterController < ApplicationController

    def index
    end

    def results
        if params[:query_deal][:deal_id].empty?
            @vehicles = Vehicle.all
        else
            deal = Deal.find(params[:query_deal][:deal_id])
            @vehicles = deal.vehicles.where(deal_id: deal)
        end
    end
end
