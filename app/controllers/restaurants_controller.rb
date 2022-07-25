class RestaurantsController < ApplicationController
  # before_action :set_restaurant

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end


  # def edit

  # end



  private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  # end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
