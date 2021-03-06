class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
    session[:name]
  end

  def login_required
    redirect_to '/login' unless session.include? :name
    
  end
end
