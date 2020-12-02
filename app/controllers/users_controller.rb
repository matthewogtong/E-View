class UsersController < ApplicationController
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
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)

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
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
  
        redirect_to home_main_path
    end
    
    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :age)
    end

    def find_user 
        @user = User.find(params[:id])
    end
    












end #end of controller