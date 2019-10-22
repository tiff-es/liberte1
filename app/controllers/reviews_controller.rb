class ReviewsController < ApplicationController
  # def index
  #   @reviews = Review.all
  # end

  def show
    @review = Review.find(params[:id])
  end



  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.valid?
      @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    if @review.update
     redirect_to review_path(@review)
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
