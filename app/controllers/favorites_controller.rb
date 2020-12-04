class FavoritesController < ApplicationController

    def add_to_favorites
        user = @current_user
        @car = Car.find_by(params[:id])
        new_favorite = Favorite.new(user_id: user.id, car_id: @car.id)
        if new_favorite.valid?
            new_favorite.save
            flash[:favorited] = "This car has been added to your favorites"
            redirect_to car_path(@car)
        else
            flash[:favorite_error] = "You have already favorited this car"
            redirect_to car_path(@car)
        end
    end



end