class ReviewsController < ApplicationController
  def new
  end

  def create
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
