class Payment < ApplicationRecord
  enum :status => [:completed, :fail]

  belongs_to :booking

  def paypal_url return_path
    values = {
      business: ENV["facilitator_paypal"],
      return: "#{Rails.application.secrets.app_host}#{return_path}",
      notify_url: "#{Rails.application.secrets.app_host}/update",
      invoice: id,
      cmd: "_xclick",
      amount: booking.total_price,
      tour_id: tour.id,
      tour_name: tour.name,
      quantity: "1",
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end
