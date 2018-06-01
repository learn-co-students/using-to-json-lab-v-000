class ProductsController < ApplicationController
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
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @product.to_json(only: [:name, :description, :price, :inventory]) }
        # binding.pry gives for @product.to_json: "{\"id\":212,\"name\":\"Test\",\"price\":3,\"created_at\":\"2018-06-01T22:11:35.714Z\",\"updated_at\":\"2018-06-01T22:11:35.714Z\",\"inventory\":12,\"description\":\"This is a great thing\"}"
    end
  end

  # def data
  #   product = Product.find(params[:id])
  #   render json: ProductSerializer.serialize(product)
  # end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
