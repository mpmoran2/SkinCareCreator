module RoutinesHelper
    def format_min(duration)
        "#{duration / 60} hours and #{duration % 60} minutes"
    end 
end