class BookingsController < ApplicationController
  load_and_authorize_resource params_method: :booking_params
  before_action :check_booking, only: :destroy

  def index
    @bookings = current_user.bookings.all
  end

  def show
    @visitors = @booking.visitors
  end

  def new
    @tour = Tour.find_by_id params[:tour_id]
    @booking = Booking.new
    @booking.visitors.build
  end

  def create
    @booking = current_user.bookings.build booking_params
    @booking.tour_id = params[:tour_id]
    @tour = Tour.find_by_id params[:tour_id]
    if @booking.save
      total_price = (@booking.tour.price)*(100 - @booking.tour.discount.percent)*(@booking.visitors.count)/100
      @booking.update_attributes total_price: total_price
      flash[:notice] = t "booking.create_success"
      redirect_to tour_booking_path(@tour, @booking)
    else
      flash[:alert] = t "booking.create_fail"
      render :new
    end
  end

  def destroy
    @booking.tour_id = params[:tour_id]
    @tour = Tour.find_by_id params[:tour_id]
    if @booking.destroy
      flash[:notice] = t "booking.delete_success"
    else
      flash[:alert] = t "booking.delete_fail"
    end
    redirect_to :back
  end

  private
  def booking_params
    params.require(:booking).permit visitors_attributes: [:id, :name, :email,
      :birthday, :gender, :address, :phone_number, :_destroy]
  end

  def check_booking
    redirect_to root_url if @booking.checked?
  end
end
