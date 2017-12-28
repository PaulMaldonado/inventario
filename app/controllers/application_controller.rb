class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_params, if: :devise_controller?

  private

  def configure_permitted_params
  	devise_parameter_sanitizer.permit(:sign_up) do | user |
  		user.permit(:name, :email, :password, :password_confirmation)
  	end
  end
end