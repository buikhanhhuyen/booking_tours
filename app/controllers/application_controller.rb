class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search, :before_show
  layout :select_layout

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "You don't have permissions to be here"
    redirect_to root_url
  end

  def set_search
    @search = Tour.search params[:q]
  end

  def before_show
    @categories = Category.all
    @places = Place.order("RAND()").limit(5)
    @tours = Tour.order(created_at: :desc).limit(10)
    @discounts = Discount.all
  end

  def select_layout
    if user_signed_in? && current_user.admin?
      "admin"
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up,
      keys: [:username, :address, :phone_number]
    devise_parameter_sanitizer.permit :account_update,
      keys: [:username, :address, :phone_number]
  end
end
