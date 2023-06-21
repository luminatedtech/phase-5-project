class ItemsController < ApplicationController
    def create 
        seller = Seller.find_by(id: session[:seller_id])
        item = seller.items.create(item_params)
        if item.valid? && session[:seller_id] = item.seller.id
            render json: item, status: :created
        else
            render json: {errors: ['Test error']}
    end 

    end 

private 
def item_params
    params.permit(:type,:price,:size,:condition,:photo,:brand,:name,:seller_id,:wearer)
end 
end
