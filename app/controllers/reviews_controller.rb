class ReviewsController < ApplicationController
  #  GET /restaurants/:restaurant_id/reviews/new
  def new
    @restaurant = restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  # POST /restaurants/:restaurant_id/reviews
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      # render the new page with all the same data
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
