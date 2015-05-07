class RatingitemsController < ApplicationController

before_action :logged_in_rater, only: [:destroy, :create]
  def show
    @ratingitem = Ratingitem.find(params[:id])
  end

    def create
    ActiveRecord::Base.connection.reset_pk_sequence!('ratingitems')

  	@ratingitem = Ratingitem.create(ratingitem_params)
  	@ratingitem.rater_id = current_rater.id
 
    if @ratingitem.save
      	flash[:success] = "Menu Item Successfully Reviewed"
      	redirect_to @ratingitem.menuitem
    else
      	flash[:danger] = "Error, try again"
    end
  end

  def destroy
    Ratingitem.find(params[:id]).destroy
    flash[:success] = "Item Review Deleted"
    redirect_to :back
  end

   private

    def ratingitem_params
      params.require(:ratingitem).permit(:rate, :comment, :menuitem_id)
    end
end
