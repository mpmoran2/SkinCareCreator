class StepsController < ApplicationController
    before_action :require_login

    #C
    def new
        grab_routine         
        @step = Step.new
    end

    def create
        @routine = Routine.find_by(id: params[:step][:routine_id])
        @step = Step.new(step_params)
        if @step.save
            redirect_to routine_steps_path(@step.routine)
        else
            render :new
        end
    end 

    #R
    def index 
        grab_routine    
        validate_routine  
    end 

    def show
        @routine = Routine.find_by(id: params[:routine_id])
        set_step
    end

    #U
    def edit
        @routine = Routine.find_by(id: params[:routine_id]) #grab_routine
        set_step
    end

    def update
        grab_routine
        set_step
        if @step.update(step_params)
            redirect_to routine_steps_path(@step.routine)
        else
            render :edit
        end 
    end 

    #D
    def destroy
        #byebug
        set_step
        not_yours(@step)
        @step.destroy
        redirect_to routines_path
    end

    private

    def grab_routine
        @routine ||= Routine.find_by(id: params[:routine_id])
    end

    def step_params
        params.require(:step).permit(:name, :product_id, :duration, :routine_id)
    end

    def validate_routine
        redirect_to routines_path unless grab_routine
    end 

    def set_step
        @step = Step.find_by(id: params[:id])
    end

    def set_routine
        @routine = Routine.find_by(id: params[:step][:routine_id])
    end

    def not_yours(step)
        if session[:user_id] != step.routine.user.id
          redirect_to oops_path
        end
    end    
end