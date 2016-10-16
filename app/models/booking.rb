class Booking < ApplicationRecord
  belongs_to :users, :discounts, :tours
  has_one :payments
  has_many :activities, as: :activable, dependent: :destroy
end
