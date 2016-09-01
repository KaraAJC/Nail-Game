class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if logged_in?
      redirect_to home_path
    else
      redirect_to login_path
    end
  end

  def about
  end

  def current_user
    @_current_user ||= Diva.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user != nil
  end

  def not_logged_in
    current_user.guest
  end

  helper_method :current_user

end
