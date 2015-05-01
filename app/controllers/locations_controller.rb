class LocationsController < ApplicationController

before_action :logged_in_rater, only: [:edit, :new, :update, :create, :destroy]

  def show
    @location = Location.find(params[:id])
  end

  def edit
	@location = Location.find(params[:id])
	@restaurants = Restaurant.all
	end
	
	def new
    	@location = Location.new
    	@restaurants = Restaurant.all
	end

	def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      flash[:success] = "Location updated"
      redirect_to @location
    else
      render 'edit'
    end
  end

  def create
    ActiveRecord::Base.connection.reset_pk_sequence!('locations')
  	@location = Location.new(location_params)
    if @location.save
      	flash[:success] = "locatiom Added"
      	redirect_to @location.restaurant
    else
      	render 'locations/new'
    end
  end

  def destroy
    Location.find(params[:id]).destroy
    flash[:success] = "Location deleted"
    redirect_to :back
  end

private

    def location_params
      params.require(:location).permit(:fopen, :manager, :phone, :postal, :address, :mon, :tue, :wed, :thurs, :fri, :sat, :sun, :restaurant_id)
    end
end
