class Tour < ApplicationRecord
  belongs_to :category
  belongs_to :discount
  belongs_to :place

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
