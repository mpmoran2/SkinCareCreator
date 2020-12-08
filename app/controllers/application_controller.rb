class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper UserProductHelper

    def home
    end  

    def current_user
        if @current_user.nil?
            @current_user = User.find_by(id: session[:user_id])
        else
            @current_user
        end 
        #@current_user ||= User.find_by(id: session[:user_id])   
    end

    def require_login
        redirect_to root_path unless logged_in?
    end

    def logged_in? 
        !!current_user
    end 

    def log_in(user)
        session[:user_id] = @user.id
    end
     
end
