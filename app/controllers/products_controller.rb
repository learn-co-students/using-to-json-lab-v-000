class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def inventory
    product = set_product
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = set_product
    render plain: product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = set_product
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @product.to_json(only: [:id, :name, :description, :inventory, :price])}
    end
  end

  # this code now in show action with to_json method
  # def data
  #   product = Product.find(params[:id])
  #   render json: ProductSerializer.serialize(product)
  # end

  private
  
  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
