class SessionsController < ApplicationController
    def new 
        
    end 

    def create 
        if request.env["omniauth.auth"]
            @user = User.find_by(github_uid: request.env["omniauth.auth"]["uid"])
            if @user.nil?
                @user = User.create(username: request.env["omniauth.auth"]["info"]["nickname"], github_uid: request.env["omniauth.auth"]["uid"], password: "github")
            end
            log_in(@user)
            redirect_to welcome_path
        else 

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
    end 

    def destroy
        session.clear
        redirect_to root_path
    end 

end