class Tour < ApplicationRecord
  enum :currency => [:vnd, :usd]

  belongs_to :category
  belongs_to :discount
  belongs_to :place

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :end_date, presence: true
  validates :start_date, presence: true
end
