class Payment < ApplicationRecord
  enum :status => [:completed, :fail]

  belongs_to :booking

 def paypal_url return_path
    values = {
      business: "buikhanhhuyenptit-facilitator-@gmail.com",
      return: "#{Rails.application.secrets.app_host}#{return_path}",
      notify_url: "#{Rails.application.secrets.app_host}/update",
      invoice: id,
      cmd: "_xclick",
      amount: @booking.total_price
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
end
