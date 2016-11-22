class BookingsController < ApplicationController
  load_and_authorize_resource params_method: :booking_params
  before_action :check_booking, only: :destroy

  def index
  end

  def show
  end

  def new
    @tour = Tour.find_by_id params[:tour_id]
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build booking_params
    @booking.user = current_user
    @booking.tour_id = params[tour_id]
    @tour = Tour.find_by_id params[:tour_id]
    if @booking.save
      flash[:notice] = t "booking.create_success"
      redirect booking_path @booking
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
    params.require(:booking).permit :total_price, :user_id, :tour_id,
      visitors_attributes: [:id, :name, :email, :birthday, :sex, :address, :phone_number]
  end

  def check_booking
    redirect_to root_url if @booking.checked?
  end
end
