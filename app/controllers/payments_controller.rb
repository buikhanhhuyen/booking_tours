class PaymentsController < ApplicationController
  load_and_authorize_resource params_method: payment_params
  before_action :update, only: :show
  protect_from_forgery except: :update

  def show
    if payment.nil?
      redirect_to root_path
    end
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new payment_params
    if @payment.save
    redirect_to @payment.paypal_url(payment_path(@payment))
    else
      render :new
    end
  end

  def update
    params.permit!
    status = params[:payment_status]
    if status == "Completed"
      @payment = Payment.find params[:invoice]
      @payment.update_attributes status: status, transaction_id: params[:txn_id],
        purchased_at: Time.now
    end
  end

  private
  def payment_params
    params.require(:payment).permit :booking_id, :user_id, :status
  end
end
