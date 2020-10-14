class SessionsController < ApplicationController
    #C
    def new 
    end 

    def create 
        @user = User.find_by(username: params[:username])
        if !@user
            @error = "We're sorry, we can't seem to find you."
            render :new        
        elsif !@user.authenticate(params[:password])
            @error = "Woops! Something isn't matching up. Please try again."
            render :new
        else 
            log_in(@user)
            redirect_to profile_path
        end
    end 
    #R

    #U

    #D
    def destroy
        session.clear
        redirect_to root_path
    end 

end