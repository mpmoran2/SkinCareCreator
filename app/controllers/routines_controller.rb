class RoutinesController < ApplicationController
    before_action :require_login

    #C
    def new
        @routine = Routine.new
    end

    def create
        @routine = current_user.routines.build(routine_params)
        if @routine.save
            redirect_to new_routine_step_path(@routine)
        else
            render :new
        end
    end 

    #R
    def index
        @routines = current_user.routines
    end

    #U
   
    #D
    def destroy
    end

    private 

    def routine_params
        params.require(:routine).permit(:name, :skintype)
    end 

    def not_yours(routine)
        if session[:user_id] != routine.user.id 
          redirect_to oops_path
        end
    end


end