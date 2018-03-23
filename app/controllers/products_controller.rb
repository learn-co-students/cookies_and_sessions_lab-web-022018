class ProductsController < ApplicationController
  def index
    @product = Product.new
    @products = Product.all
  end

  def create
    add_to_cart
    redirect_to products_path
  end

  def add_to_cart
    @product = Product.create(product: params["product"])

    cart << @product
  end

  private

    def product_params
      params.require(:product).permit(:product)
    end

end
