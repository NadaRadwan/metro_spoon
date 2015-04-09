class RatingitemsController < ApplicationController

before_action :logged_in_rater, only: [:destroy]
  def show
    @ratingitem = Ratingitem.find(params[:id])
  end

  def destroy
    Ratingitem.find(params[:id]).destroy
    flash[:success] = "Item Review Deleted"
    redirect_to :back
  end
end
