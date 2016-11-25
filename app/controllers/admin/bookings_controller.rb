class Admin::BookingsController < ApplicationController
  load_and_authorize_resource

  def index
    @search = Booking.search params[:q]
    @bookings = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  def show
    @visitors = @booking.visitors
  end

  def update
  end
end
