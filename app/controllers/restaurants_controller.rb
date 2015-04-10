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

     #G) querry
  @janRate = Restaurant.find_by_sql(
      "SELECT R.name, R.rtype, L.phone FROM Restaurants R JOIN Locations L ON R.ID = L.restaurant_ID WHERE NOT EXISTS( SELECT R.ID FROM Ratings RT WHERE R.ID=RT.restaurant_ID AND RT.created_at BETWEEN '2015-01-01' AND '2015-01-31');"
      )

  #h)Find the names and review dates of the restaurants that obtained Staff rating that is lower than any rating given by rater 
     @rstat = Rater.find_by_sql(
      "SELECT R.name as rname, RT.created_at as rdate FROM Restaurants R, Ratings RT WHERE R.id=RT.restaurant_id AND RT.staff <ALL( SELECT RT2.staff FROM Ratings RT2, Raters R2 WHERE RT2.rater_id=R2.id AND R.name='#{params[:search]}') ORDER BY RT.created_at;"
      )
 

    

      #J) Most popular restaurant types
      @popType = Restaurant.find_by_sql(
        "SELECT R.rType as rtype, Count(RT.restaurant_id) AS  numRatings FROM Ratings RT, Restaurants R WHERE R.id=RT.restaurant_id GROUP BY R.rType ORDER BY numRatings;"
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
