class Booking < ApplicationRecord
  belongs_to :users, :discounts, :tours
  has_one :payments
  has_many :activities, as: :activable, dependent: :destroy
  has_many :visitor, dependent: :destroy
end
