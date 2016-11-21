class Booking < ApplicationRecord
  enum :status => [:uncheck, :checked, :rejected]

  belongs_to :users
  belongs_to :discounts
  belongs_to :tours
  has_one :payments
  has_many :activities, as: :activable, dependent: :destroy
  has_many :visitors, dependent: :destroy
  accepts_nested_attributes_for :visitors, :reject_if => lambda{|a| a[:name].blank?},
    allow_destroy: true
end
