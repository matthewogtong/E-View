class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def create
        @review = @current_user.reviews << Review.create(review_params)
        @recent_review = @review.last
        
        redirect_to review_path(@recent_review.id)
        
    end

    private

    def review_params
        params.require(:review).permit(:car_id, :content, :rating, :likes)
    end


end