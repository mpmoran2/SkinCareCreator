class SessionsController < ApplicationController
    #C
    def new 
    end 

    def create 
        @user = User.find_by(username: params[:username])
        if !@user && @user.authenticate(params[:password])
            log_in(@user)
            redirect_to routines_path
        else
            @error = "Woops! Something isn't matching up. Please try again."
            render :new
        end
    end 
    #R

    #U

    #D
    def destroy
        session.clear
        redirect_to home_path
    end 

end