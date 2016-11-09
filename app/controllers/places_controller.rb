class PlacesController < ApplicationController
  load_and_authorize_resource

  def index
    @search = Place.search params[:q]
    @places = @search.result
  end

  def show
    @reviews = @place.reviews
  end
end
