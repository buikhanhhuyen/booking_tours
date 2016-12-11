class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search, :before_show

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "You don't have permissions to be here"
    redirect_to root_url
  end

  def set_search
    @search = Tour.search params[:q]
  end

  def before_show
    @categories = Category.all
    @places = Place.all
    @tours = Tour.all
    @discounts = Discount.all
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
