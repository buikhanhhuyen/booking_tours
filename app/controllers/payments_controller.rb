class PaymentsController < ApplicationController
  load_and_authorize_resource params_method: :payment_params

  def new
    @payment = Payment.new
    @booking = Booking.find_by_id params[:booking_id]
  end

  def create
    byebug
    @payment = Payment.new payment_params.merge(email: params["stripeEmail"])
    @payment.process_payment
    @payment.save
    @payment.booking.update_attributes status: Booking.statuses[:paid]
    flash[:success] = "success"
    byebug
    redirect_to root_path
    rescue Stripe::CardError
      flash[:error] = "error"
      redirect_to new_booking_payment_path
  end

  private
  def payment_params
    params.require(:payment).permit :booking_id
  end
end
