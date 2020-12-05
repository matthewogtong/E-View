class AchievementsController < ApplicationController
    def show
        
        @user = @current_user
        
        @achievements = @user.achievement

        @achievements.badges
    end

    

end