module UserProductHelper

    def current_user
        User.find_by(id: session[:user_id])
    end

    def user_product
        @products = current_user.products
    end 
end
