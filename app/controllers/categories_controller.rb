class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
    @tours = @category.tours
  end
end
