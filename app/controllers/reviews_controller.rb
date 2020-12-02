class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if @review.valid?
          redirect_to review_path(@review)
        else
          flash[:review_errors] = @review.errors.full_messages
          redirect_to new_review_path
         end
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :car_id, :content, :rating, :likes)
    end


end