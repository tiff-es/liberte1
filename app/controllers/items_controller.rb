class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @review = Review.new
    @review.item = @item

    #redirect_to the purchase or cart
  end




end
