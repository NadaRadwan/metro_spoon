class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.paginate(page: params[:page])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
	@restaurant = Restaurant.find(params[:id])
	end
	
	def new
    	@restaurant = Restaurant.new
	end

	def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      flash[:success] = "Restaurant updated"
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      	flash[:success] = "Restaurant Added"
      	redirect_to @restaurant
    else
      	render 'restaurants/new'
    end
  end

  def destroy
    Restaurant.find(params[:id]).destroy
    flash[:success] = "Restaurant deleted"
    redirect_to restaurants_url
  end

private

    def restaurant_params
      params.require(:restaurant).permit(:name, :rtype, :url)
    end
end
