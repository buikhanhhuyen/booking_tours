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
      if @tour.discount
        total_price = (@tour.price)*(100 - @tour.discount.percent)*(@booking.visitors.count)/100
      else
        total_price = (@tour.price)*(@booking.visitors.count)
      end
      @booking.update_attributes total_price: total_price
      flash[:notice] = t "booking.create_success"
      redirect_to new_booking_payment_path(@booking)
    else
      flash[:alert] = t "booking.create_fail"
      render :new
    end
  end

  def update
    if params[:user_payment]
      payment = Payment.create amount: @booking.total_price, booking_id: @booking.id
      payment.paypal_url [@booking]
      redirect_to payment.paypal_url [@booking]
    else
      @payment = Payment.find params[:invoice]
      @payment.update_attributes status: status,
        transaction_id: params[:txn_id], purchased_at: Time.now
    end
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
