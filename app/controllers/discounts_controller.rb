class DiscountsController < ApplicationController
  load_and_authorize_resource
  before_action :check_discount, only: [:show, :index]

  def index
  end

  def show
    @tours = @discount.tours
  end

  private
  def check_discount
    @discount = Tour.fdiscount.find_by_id params[:id]
  end
end
