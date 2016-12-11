class Admin::BookingsController < ApplicationController
  load_and_authorize_resource params_method: :booking_params

  def index
    @search = Booking.search params[:q]
    @bookings = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end

  def show
    @visitors = @booking.visitors
  end

  def edit
  end

  def update
    if @booking.update_attributes booking_params
      if @booking.tour.discount
        total_price = (@booking.tour.price)*(100 - @booking.tour.discount.percent)*(@booking.visitors.count)/100
      else
        total_price = (@booking.tour.price)*(@booking.visitors.count)
      end
      @booking.update_attributes total_price: total_price
      flash[:notice] = t "booking.update_success"
      redirect_to admin_bookings_path
    else
      flash[:alert] = t "booking.update_fail"
      render :edit
    end
  end

  def destroy
    if @booking.destroy
      flash[:notice] = t "booking.delete_success"
    else
      flash[:alert] = t "booking.delete_fail"
    end
    redirect_to admin_bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit visitors_attributes: [:id, :name, :email,
      :birthday, :gender, :address, :phone_number, :_destroy]
  end
end
