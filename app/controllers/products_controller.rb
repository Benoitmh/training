class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  # skip_before_action :authenticate_owner!

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
