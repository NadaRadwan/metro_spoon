class MenuitemsController < ApplicationController
before_action :logged_in_rater, only: [:edit, :new, :update, :create, :destroy]


  def show
    @menuitem = Menuitem.find(params[:id])
    @ratingitems = @menuitem.ratingitems.paginate(page: params[:page])
  end

  def edit
	@menuitem = Menuitem.find(params[:id])
	@restaurants = Restaurant.all
	end
	
	def new
    	@menuitem = Menuitem.new
    	@restaurants = Restaurant.all
	end

	def update
    @menuitem = Menuitem.find(params[:id])
    if @menuitem.update_attributes(menuitem_params)
      flash[:success] = "Menu Item updated"
      redirect_to @menuitem
    else
      render 'edit'
    end
  end

  def create
    ActiveRecord::Base.connection.reset_pk_sequence!('menuitems')
  	@menuitem = Menuitem.new(menuitem_params)
    if @menuitem.save
      	flash[:success] = "Menu Item Added"
      	redirect_to @menuitem.restaurant
    else
      	render 'menuitems/new'
    end
  end

  def destroy
    Menuitem.find(params[:id]).destroy
    flash[:success] = "Menu Item deleted"
    redirect_to :back
  end

private

    def menuitem_params
      params.require(:menuitem).permit(:name, :mtype, :category, :description, :price, :restaurant_id)
    end
end
