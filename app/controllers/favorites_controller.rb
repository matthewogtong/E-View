class FavoritesController < ApplicationController
    def show
        @user = User.find_by(params[:id])
    end
end