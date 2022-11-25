class ReviewsController < ApplicationController
  def create
    @reviews = Review.find(params[:bag_id])
    @reviews = Review.new(review_params)
    @reviews.bag = @reviews
    if @reviews.save
      redirect_to bag_path(@reviews)
    else
      render "review/show", status: :unprocessable_entity
    end
  end


  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
