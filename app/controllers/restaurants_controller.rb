class RestaurantsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
