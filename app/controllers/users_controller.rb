class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    before_action :find_user, only: [:show, :edit, :update]

    def home
        @users = User.all

    end

    def login
        
    end

    def index
        @users = User.all
    end

    def show
        @recent_reviews = @current_user.reviews.last(3)
        achievement = @current_user.achievement
        achievement.badges
        @badge = @current_user.achievement.badge
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        user.img_url = Faker::Avatar.image
        user.save
        Achievement.create(next_badge_achievement: "", badge: "", points: 0, user_id: user.id)
        if user.valid?
            cookies[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:user_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        if  @user.valid?
            redirect_to user_path(@user)
        else
            flash[:user_errors] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    def delete_user
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])

        cookies[:user_id] = @user.id

        @user.destroy

        redirect_to home_main_path
    end

    def user_reviews
        @user = User.find(params[:id])
        @reviews = @current_user.reviews
    end

    def user_favorites
        @user = @current_user


    end
    
    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :age, :img_url)
    end

    def find_user 
        @user = User.find(params[:id])
    end
end #end of controller