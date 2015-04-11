class RatersController < ApplicationController

  before_action :logged_in_rater, only: [:edit, :update, :destroy]
  before_action :correct_rater,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @raters = Rater.paginate(page: params[:page])

    #k) querry
    @foodAndMood = Rater.find_by_sql(
      "SELECT Temp.rname, Temp.restname, Temp.ratCreat, Temp.overallRating, Temp.reputation, Temp.raterdate FROM ( SELECT RR.name as rname, R.name as restname, RT.created_at as ratCreat, Sum(RT.food + RT.mood) AS overallRating, RR.reputation, RR.created_at as raterdate FROM Raters RR, Ratings RT, Restaurants R WHERE RR.id=RT.rater_id AND R.id=RT.restaurant_id GROUP BY rname,restname, ratCreat, RR.reputation, raterdate) AS Temp WHERE Temp.overallRating =( SELECT MAX(T.overallRating) FROM( SELECT RR.name, R.name, RT.created_at, Sum(RT.food + RT.mood) AS overallRating, RR.reputation, RR.created_at FROM Raters RR, Ratings RT, Restaurants R WHERE RR.id=RT.rater_id AND R.id=RT.restaurant_id GROUP BY RR.name,R.name, RT.created_at, RR.reputation, RR.created_at) AS T);"
      )

    #L) querry
    @foodOrMood = Rater.find_by_sql(
      "SELECT RR.name as rater, R.name as rest, RT.created_at, RR.reputation, RT.food, RT.mood FROM Raters RR, Ratings RT, Restaurants R WHERE RR.ID=RT.rater_ID AND R.id=RT.restaurant_ID GROUP BY RR.name,R.name, RT.created_at, RR.reputation, RT.food, RT.mood HAVING (RT.food>=ALL( SELECT RT2.food FROM Ratings RT2)) OR (RT.mood>=ALL( SELECT RT2.mood FROM Ratings RT2));"
      )

    #m) querry
    @freqRating = Rater.find_by_sql(
      "SELECT Temp.ratname, Temp.reputation, Temp.comment, Temp.mname FROM ( SELECT RR.name as ratname, R.name, COUNT(RT.restaurant_id) AS numRating, RR.reputation, RT.comment, MI.name as mname, MI.price FROM Raters RR, Ratings RT, Restaurants R, Ratingitems RI, Menuitems MI WHERE RR.id=RT.rater_id AND R.id=RT.restaurant_id AND R.name='#{params[:search]}' AND RT.rater_id=RI.rater_ID AND RI.menuitem_id=MI.id GROUP BY ratname,R.name, RR.reputation, RT.comment, MI.name, MI.price) AS Temp WHERE Temp.numRating =( SELECT MAX(T.numRating) FROM( SELECT RR.name, R.name, COUNT(RT.restaurant_id) AS numRating, RR.reputation, RT.comment, MI.name, MI.price FROM Raters RR, Ratings RT, Restaurants R, RatingItems RI, MenuItems MI WHERE RR.id=RT.rater_id AND R.id=RT.restaurant_id AND R.name='#{params[:search]}' AND RT.rater_id=RI.rater_id AND RI.menuitem_id=MI.id GROUP BY RR.name,R.name, RR.reputation, RT.comment,  MI.name, MI.price) AS T);"
      )

    #n) querry
    @lowRating = Rater.find_by_sql(
      "SELECT Temp.ratname, Temp.overallRating, Temp.email FROM ( SELECT RR.name ratname,Sum(RT.food + RT.mood+ RT.staff + RT.price) AS overallRating, RR.email FROM Raters RR, Ratings RT WHERE RR.id=RT.rater_id  GROUP BY RR.name,RR.email) AS Temp WHERE Temp.overallRating <( SELECT (T.overallRating) FROM( SELECT RR.name,  Sum(RT.food + RT.mood+ RT.staff + RT.price)  AS overallRating, RR.email FROM Raters RR, Ratings RT WHERE RR.id=RT.rater_id AND RR.name='#{params[:search2]}' GROUP BY RR.name,RR.email) AS T);"
      )

  end

  def show
    @rater = Rater.find(params[:id])

  end

  def new
  	@rater = Rater.new
  end

  def create
    @rater = Rater.new(rater_params)
    if @rater.save
      log_in @rater
    	flash[:success] = "Welcome to Ottawa's Spoon"
      	redirect_to @rater
    else
      render 'new'
    end
  end

   def edit
    @rater = Rater.find(params[:id])
  end

  def update
    @rater = Rater.find(params[:id])
    if @rater.update_attributes(rater_params)
      flash[:success] = "Profile updated"
      redirect_to @rater
    else
      render 'edit'
    end
  end

  def destroy
    Rater.find(params[:id]).destroy
    flash[:success] = "Rater deleted"
    redirect_to raters_url
  end

private

    def rater_params
      params.require(:rater).permit(:name, :email, :atype, :password,
                                   :password_confirmation)
    end


    def correct_rater
      @rater = Rater.find(params[:id])
      redirect_to(root_url) unless current_rater?(@rater)
    end

    def admin_user
      redirect_to(root_url) unless current_rater.admin?
    end

end
