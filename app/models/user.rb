class User < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :comments
  has_many :likes
  has_many :rates
  has_many :activities
  has_many :bank_accounts
end
