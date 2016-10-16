class Payment < ApplicationRecord
  belongs_to :bank_accounts
  belongs_to :bookings
end
