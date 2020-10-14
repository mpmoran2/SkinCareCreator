class ProductsController < ApplicationController  
    before_action :require_login
    
    #C
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

    #R
    def index 
        @products = current_user.products
    end

    def cleanser
        @products = Product.cleanser
        render :index
    end

    def toner 
        @products = Product.toner
        render :index
    end

    def mask 
        @products = Product.mask
        render :index
    end

    def treatement 
        @products = Product.treatement
        render :index
    end
    
    def essence 
        @products = Product.essence
        render :index
    end

    def serum 
        @products = Product.serum
        render :index
    end

    def moisturizer 
        @products = Product.moisturizer
        render :index
    end

    def oil_cleanse
        @products = Product.oil_cleanse
        render :index
    end

    def lip_treat 
        @products = Product.lip_treat
        render :index
    end

    def eye_cream 
        @products = Product.eye_cream
        render :index
    end

    def spf 
        @products = Product.spf
        render :index
    end

    def ampule   
        @products = Product.ampule
        render :index
    end

    #U
    def edit
      set_product
    end

    def update
       set_product
       @product.update(product_params)
       redirect_to @product
    end

    #D
    def destroy
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