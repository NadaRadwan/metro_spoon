class StaticPagesController < ApplicationController
  def home	
  	#Query C)
  	    @managerType = Restaurant.find_by_sql(
      "SELECT L.manager, L.fopen FROM Locations L, Restaurants R WHERE R.rType='#{params[:search]}' AND L.restaurant_ID=R.ID;"
      ) 
  	

 #i) Restaurants of specific types that received highest food ratings
      @highFoodRating = Restaurant.find_by_sql(
      "SELECT R.name as rname, RR.name as rtname, R.rtype as rtype FROM Restaurants R, Ratings RT, Raters RR WHERE R.id=RT.restaurant_id AND RT.rater_id=RR.id AND R.rType='#{params[:search2]}' AND RT.food>=ALL( SELECT RT2.food FROM Ratings RT2);"
      )

  end
end
