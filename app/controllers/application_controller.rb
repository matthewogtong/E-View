class ApplicationController < ActionController::Base
    before_action :find_current_user


    def find_current_user
        @current_user = User.find_by(id: cookies[:user_id])
    end

    
end
