class UsersController < ApplicationController
    #C
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

    #R

    #U

    #D
    private

    def user_params
        params.require(:user).permit(:username, :age, :gender, :password, :password_confirmation)
    end
end