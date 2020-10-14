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

    #U

    #D
    private

    def grab_routine
        @routine ||= Routine.find_by(id: params[:routine_id])
    end

    def step_params
        params.require(:step).permit(:name, :product_id, :duration, :routine_id)
    end

    def validate_routine
        redirect_to routines_path if !@routine
    end 
end