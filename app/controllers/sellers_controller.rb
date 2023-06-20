class SellersController < ApplicationController
    def create
        seller = seller.create(seller_params)
        session[:seller_id] = seller.id
        if seller.valid?
            render json: user, status: :created
        else 
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end 
    end 

private 
    def seller_params
        params.permit(:username, :password, :password_confirmation)
    end 
end
