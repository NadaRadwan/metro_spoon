class SessionsController < ApplicationController
   
  def new
  end

  def create
    rater = Rater.find_by(email: params[:session][:email].downcase)
    if rater && rater.authenticate(params[:session][:password])
     log_in rater
      redirect_to rater
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  	log_out if logged_in?
    redirect_to root_url
  end
end