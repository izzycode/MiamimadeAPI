module SessionsHelper
  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end

  def logged_in?
    not current_user.nil?
  end

  def authorize
    redirect_to '/login' unless current_user
  end
end
