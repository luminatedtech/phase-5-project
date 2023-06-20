class CustomersController < ApplicationController
    def create
        customer = Customer.create(customer_params)
        session[:customer_id] = customer.id
        if customer.valid?
            render json: user, status: :created
        else 
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end 
    end 

private 
    def customer_params
        params.permit(:username, :password, :password_confirmation)
    end 
end
