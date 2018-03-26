class ProductsController < ApplicationController

  def index
  end

  def add
    cart << params["product"]["name"]
    redirect_to '/'
  end

end
