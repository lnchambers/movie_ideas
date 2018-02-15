class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :user_owned?, :current_admin?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    current_user && current_user.admin?
  end

  def user_owned?
    @movie.user_id == current_user.id
  end
end
