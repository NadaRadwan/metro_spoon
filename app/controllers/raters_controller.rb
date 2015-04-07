class RatersController < ApplicationController

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


    def rater_params
      params.require(:rater).permit(:name, :email, :atype, :password,
                                   :password_confirmation)
    end

end
