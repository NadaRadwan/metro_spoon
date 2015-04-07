module SessionsHelper
	def log_in(rater)
   session[:rater_id] = rater.id
  end

  def current_rater
    @current_rater ||= Rater.find_by(id: session[:rater_id])
  end

   def logged_in?
    !current_rater.nil?
  end

   def log_out
    session.delete(:rater_id)
    @current_rater = nil
  end

  def current_rater?(rater)
    rater == current_rater
  end
end
