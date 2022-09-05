class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show chef destroy]
  def index
   @restaurants = Restaurant.all
  end

  def show
  end

  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  def chef
    @chef = @restaurant.chef
  end

  def destroy
    @restaurant.delete
    redirect_to root_path
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
