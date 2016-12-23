class Admin::PlacesController < ApplicationController
  load_and_authorize_resource params_method: :place_params

  def index
    @search = Place.search params[:q]
    @places = @search.result
  end

  def new
    @place = Place.new
  end

  def create
    if @place.save
      flash[:notice] = t "admin_places.create_success"
      redirect_to admin_places_path
    else
      flash[:alert] = t "admin_places.create_fail"
      render :new
    end
  end

  def edit
  end

  def update
    if @place.update_attributes place_params
      flash[:notice] = t "admin_places.update_success"
      redirect_to admin_places_path
    else
      flash[:alert] = t "admin_places.update_fail"
      render :edit
    end
  end

  def destroy
    if @place.destroy
      flash[:notice] = t "admin_places.delete_success"
      redirect_to admin_places_path
    else
      flash[:alert] = t "admin_places.delete_fail"
      redirect_to admin_places_path
    end
  end

  private
  def place_params
    params.require(:place).permit :name, :description
  end
end
