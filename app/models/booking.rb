class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :discounts
  belongs_to :tours
  has_one :payments
  has_many :activities, as: :activable, dependent: :destroy
  has_many :visitor, dependent: :destroy
end
