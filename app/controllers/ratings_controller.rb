class RatingsController < ApplicationController

	before_action :logged_in_rater, only: [:destroy]
  def show
    @rating = Rating.find(params[:id])
  end

  def destroy
    Rating.find(params[:id]).destroy
    flash[:success] = "Rating deleted"
    redirect_to :back
  end
end
