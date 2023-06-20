class ReviewsController < ApplicationController
    def create
        review = @customer.reviews.create(review_params)
        if review.valid? && session[:customer_id] = review.customer.id
            render json: review, status: :created
        else 
            render json: {errors: ["Test error"]}
        end 
    end 
private
def review_params
    params.permit(:title,:comment,:rating,:customer_id,:seller_id)
end 
end
