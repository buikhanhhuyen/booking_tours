class ToursController < ApplicationController
  load_and_authorize_resource

  def index
    @search = Tour.search params[:q]
    @tours = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  def show
    @visitors = @tour.bookings.collect {|b| b.visitors }
    @left = @tour.max_visitors - @visitors.count
  end
end
