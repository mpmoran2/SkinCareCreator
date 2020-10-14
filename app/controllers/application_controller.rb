class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_user
        User.find_by(id: session[:user_id])
    end

    def require_login
        redirect_to home_path unless logged_in?
    end

    def logged_in? 
        !!current_user
    end 

    def log_in(user)
        session[:user_id] = @user.id
    end
end
