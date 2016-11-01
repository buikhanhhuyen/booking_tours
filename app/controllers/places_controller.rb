class PlacesController < ApplicationController
  load_and_authorize_resource

  def index
    @places = Place.all
  end

  def show
    @reviews = @place.reviews
  end
end
