class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :login]

    def new
    end

    def logout
        cookies.delete(:user_id)
        redirect_to home_main_path
    end

    def login
        user = User.find_by(username: params[:session][:username])

        if user && user.authenticate(params[:session][:password])
            cookies[:user_id] = user.id
            redirect_to home_main_path
        else
            flash[:login_errors] = "Username or Password is incorrect"
            redirect_to new_login_path
        end
    end
end