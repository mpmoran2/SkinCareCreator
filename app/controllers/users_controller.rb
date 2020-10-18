class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            log_in(@user) 
            redirect_to welcome_path
        else
            render :new
        end
    end

    def show        
        @user =  current_user
        @routines = current_user.routines.count
        @products = current_user.products.count
    end

    def welcome
        @user =  current_user
    end 

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end

#beep beep imma sheep please update the git