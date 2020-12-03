class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def create
        @review = @current_user.reviews << Review.create(review_params)

        redirect_to review_path(review_params[:car_id])
        
    end

    private

    def review_params
        params.require(:review).permit(:car_id, :content, :rating, :likes)
    end


end