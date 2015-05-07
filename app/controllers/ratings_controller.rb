class RatingsController < ApplicationController

	before_action :logged_in_rater, only: [:destroy, :create]
  def show
    @rating = Rating.find(params[:id])
  end

  def create
    ActiveRecord::Base.connection.reset_pk_sequence!('ratings')

  	@rating = Rating.create(rating_params)
  	@rating.rater_id = current_rater.id
 
    if @rating.save
      	flash[:success] = "Restaurant Successfully rated"
      	redirect_to @rating.restaurant
    else
      	flash[:danger] = "Error, try again"
    end
  end

  def destroy
    Rating.find(params[:id]).destroy
    flash[:success] = "Rating deleted"
    redirect_to :back
  end

  private

    def rating_params
      params.require(:rating).permit(:price, :food, :mood, :staff, :comment, :restaurant_id)
    end
end
