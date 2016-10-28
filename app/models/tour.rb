class Tour < ApplicationRecord
  belongs_to :categories
  belongs_to :discounts
  belongs_to :places

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
