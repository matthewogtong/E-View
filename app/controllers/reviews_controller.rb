class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
      
    end

    def new
        @review = Review.new
    end

    def create
        review = @current_user.reviews << Review.create(review_params)
        recent_review = review.last
        car = recent_review.car
        
        car_average_rating = car.reviews.sum {|review| review.rating}.to_f / car.reviews.count
        car.rating = car_average_rating
        car.save
        redirect_to review_path(recent_review.id) 
    end

    def add_a_like
        review = Review.find(params[:id])
        if @current_user.id ==  review.user.id
            flash[:like_error] = "You can't like your own post"
            redirect_to review_path(review)
        else
            review.likes += 1
            review.save
            user_achievement = review.user.achievement
            user_achievement.points += 1
            user_achievement.save
            redirect_to review_path(review)
        end
    end

    private

    def review_params
        params.require(:review).permit(:car_id, :content, :rating, :likes)
    end


end