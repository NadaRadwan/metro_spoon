class RatersController < ApplicationController

  before_action :logged_in_rater, only: [:edit, :update, :destroy]
  before_action :correct_rater,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @raters = Rater.paginate(page: params[:page])
  end

  def show
    @rater = Rater.find(params[:id])

    #h)Find the names and review dates of the restaurants that obtained Staff rating that is lower than any rating given by rater 
    @rstat = Rater.find_by_sql(
      "SELECT R.name as rname, RT.created_at as rdate FROM Restaurants R, Ratings RT WHERE R.id=RT.restaurant_id AND RT.staff <ALL( SELECT RT2.staff FROM Ratings RT2, Raters R2 WHERE RT2.rater_id=R2.id AND R.id=#{@rater.id}) ORDER BY RT.created_at;"
      )
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
