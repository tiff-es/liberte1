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

  def update
    @item = Item.find(params[:id])
    @review = Review.new(content: params[:item][:review][:content], rating: params[:item][:review][:rating], item: @item)
    @review.save
    redirect_to item_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @review = Review.find()
    @review.destroy

    redirect_to item_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(review: [:rating, :content])
  end
end
