class ProductsController < ApplicationController
  # Create a Products controller with two actions, index and add.
  def index
    @items = cart
    # @items = session[:cart]
  end

  def add
    # homepage adds items to the cart when they're submitted via its form
    # render "COOL #{params}"
    # puts "#{params}"
    # { "item"=>"test", "commit"=>"add to cart", "controller"=>"products", "action"=>"add"}
    @item = (params[:item])
    # puts "*********************#{@item}"
    cart << @item
    # session[:cart] << @item
    # redirect_to '/'

    # changing below to render still causes error in test but not in actual use 
    #     Failure/Error: expect(rendered).to include 'apples'
    @items = cart
    render :index  #render no cart items like tests even though my redirect_to does
  end
end
