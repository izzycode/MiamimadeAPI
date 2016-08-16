module SessionsHelper
  def current_user
    User.find(session[:user_id]) unless session[:user_id]
  end

  def logged_in?
    not current_user.nil?
  end

  def authorize
    redirect_to '/login' unless current_user
  end
end
