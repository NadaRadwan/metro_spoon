class RatersController < ApplicationController

  before_action :logged_in_rater, only: [:edit, :update, :destroy]
  before_action :correct_rater,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @raters = Rater.paginate(page: params[:page])
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

    def logged_in_rater
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_rater
      @rater = Rater.find(params[:id])
      redirect_to(root_url) unless current_rater?(@rater)
    end

    def admin_user
      redirect_to(root_url) unless current_rater.admin?
    end

end
