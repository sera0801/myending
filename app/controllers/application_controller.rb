class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :kana, :email, :b_year, :b_month, :b_day, :sex, :postalcode1, :postalcode2, :address, :password, :password_confirmation)}
  end


  def after_sign_out_path_for(resource)
  logout_path
  end


end
