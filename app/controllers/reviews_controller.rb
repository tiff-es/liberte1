class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end



  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review][:reviews])
    byebug
    if @review.valid?
      @review.save
      @item = @review.item
      redirect_to item_path(@item)
    else
      redirect_to item_path(@item)
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @item = @review.item
    @review.update(review_params)
    if @review.update(review_params)
     redirect_to item_path(@item)
    else
      render :edit
   end
  end


  def destroy
    @review = Review.find(params[:id])
  @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :customer_id, :item_id)
  end

end
