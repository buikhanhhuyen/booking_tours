class DiscountsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
    @tours = @discount.tours
  end
end
