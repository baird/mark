class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # let's make sure we have a logged in buyer or seller or send them to /
  def auth_dash
    redirect_to '/' unless user_signed_in? || seller_signed_in?
  end


  # after login send them to dashboard
  def after_sign_in_path_for(user)
    '/dashboard'
  end
  def after_sign_in_path_for(seller)
    '/dashboard'
  end

end
