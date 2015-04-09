class RestaurantsController < ApplicationController

before_action :logged_in_rater, only: [:edit, :new, :update, :create, :destroy]

  def index
    @restaurants = Restaurant.paginate(page: params[:page])
     #avg price in category
     @catAvg = Restaurant.find_by_sql(
      "Select restaurants.rtype as rtype, AVG(menuitems.price) as avp From menuitems, restaurants WHERE restaurants.id =menuitems.restaurant_id GROUP BY rtype;"
      )

     # f)number of ratings left by user for each restaurant
     @rateNum = Restaurant.find_by_sql(
      "SELECT restaurants.name as rtname, raters.name as uname, COUNT(*) as rcount FROM Restaurants, Raters, Ratings WHERE Restaurants.id = ratings.restaurant_id AND raters.id = ratings.rater_id GROUP BY restaurants.name, raters.name ORDER BY raters.name;"
      )

     #i) Restaurants of specific types that received highest food ratings
      @hm = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='mexican' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )
      @hi = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='italian' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )
       @ha = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='american' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )
      @hc = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='chinese' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )
       @hf = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='french' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )
        @hp = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='pub' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )
        @hs = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='southern' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )
        @hb = Restaurant.find_by_sql(
      "SELECT Distinct R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='breakfast' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )

      #J) Most popular restaurant types
      @popType = Restaurant.find_by_sql(
        "SELECT R.rType as rtype, Count(RT.restaurant_id) AS  numRatings FROM Ratings RT, Restaurants R WHERE R.id=RT.restaurant_id GROUP BY R.rType;"
        )


  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @locations = @restaurant.locations.paginate(page: params[:page])
    @menuitems = @restaurant.menuitems.paginate(page: params[:page])
    @ratings = @restaurant.ratings.paginate(page: params[:page])
    @rp = @restaurant.menuitems.where(price: @restaurant.menuitems.maximum("price"))

    @typAvg = Restaurant.find_by_sql(
      "Select menuitems.category as mcat, AVG(menuitems.price) as avp From menuitems, restaurants WHERE #{@restaurant.id} =menuitems.restaurant_id GROUP BY mcat;"
      )


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
