class ProductsController < ApplicationController
    before_action :set_product, only: [:new, :show]
    def index
        @products = Product.all
    end

    def inventory
      product = Product.find(params[:id])
      render plain: product.inventory > 0 ? true : false
    end

    def description
      product = Product.find(params[:id])
      render plain: product.description
    end

    def new
    end

    def create
        Product.create(product_params)
        redirect_to products_path
    end

    def show
        respond_to do |format|
            format.html{render :show}
            format.json{render json: set_product.to_json(only: [:name, :description, :inventory, :price, :id]) }
        end
    end


    private
    def set_product
        @product = Product.find(params[:id])
    end
    def product_params
        params.require(:product).permit(:name, :description, :inventory, :price)
    end
end
