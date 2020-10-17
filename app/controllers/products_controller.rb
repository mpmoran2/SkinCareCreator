class ProductsController < ApplicationController  
    before_action :require_login
    
    def new
        @product = Product.new
    end

    def create
        @product = current_user.products.build(product_params)
        if @product.save
            redirect_to products_path(@product)
        else
            render :new
        end
    end 

    def index 
        @products = current_user.products
    end

    def show
        current_user
        set_product
    end 

    def cleanser
        @products = current_user.products.cleanser
        # if @products = Product.cleanser
            render :index
        # else
        #     @error = "There are no products like this"
        #     render :index
        # end

    end

    def toner 
        @products = current_user.products.toner
        render :index
    end

    def mask 
        @products = current_user.products.mask
        render :index
    end

    def treatement 
        @products = current_user.products.treatement
        render :index
    end
    
    def essence 
        @products = current_user.products.essence
        render :index
    end

    def serum 
        @products = current_user.products.serum
        render :index
    end

    def moisturizer 
        @products = current_user.products.moisturizer
        render :index
    end

    def oil_cleanse
        @products = current_user.products.oil_cleanse
        render :index
    end

    def lip_treat 
        @products = current_user.products.lip_treat
        render :index
    end

    def eye_cream 
        @products = current_user.products.eye_cream
        render :index
    end

    def spf 
        @products = current_user.products.spf
        render :index
    end

    def ampule   
        @products = current_user.products.ampule
        render :index
    end

    def edit
      set_product
    end

    def update
       set_product
       @product.update(product_params)
       redirect_to @product
    end

    def destroy
        set_product
        not_yours(@product)
        @product.destroy
        redirect_to products_path
    end

    private 

    def product_params
        params.require(:product).permit(:brand, :name, :use_for, :skintype)
    end 

    def not_yours(product)
        if session[:user_id] != product.user.id 
          redirect_to oops_path
        end
    end

    def set_product
        @product = Product.find_by(id: params[:id])
    end
end