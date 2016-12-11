class Payment < ApplicationRecord
  enum :status => [:completed, :fail]

  belongs_to :booking


  def process_payment
      byebug
    customer = Stripe::Customer.create email: email
    charge = Stripe::Charge.create customer: customer.id,
      amount: booking.total_price,
      currency: "usd"
    self.charge_token = charge.id
    self.customer_token = customer.id
    byebug
  end

  def process_refund
    Stripe::Refund.create charge: self.charge_token
  end
end
