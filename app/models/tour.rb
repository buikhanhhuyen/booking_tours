class Tour < ApplicationRecord
  belongs_to :categories, :discounts, :places

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
