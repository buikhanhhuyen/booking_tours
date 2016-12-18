class ToursController < ApplicationController
  load_and_authorize_resource
  before_action :check_tour, only: [:show, :index]

  def index
    @search = Tour.search params[:q]
    @tours = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  def show
  end

  private
  def check_tour
    @tour = Tour.ftour.find_by_id params[:id]
  end
end
