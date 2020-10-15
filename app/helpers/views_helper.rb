module ViewsHelper

    def current_page
        User.find_by(id: session[:user_id])
    end

    def logged_in? 
        !!current_page
    end 
end