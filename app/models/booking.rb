class Booking < ApplicationRecord
  enum :status => [:unpaid, :paid]

  belongs_to :user
  belongs_to :tour
  has_one :bill
  has_many :activities, as: :activable, dependent: :destroy
  has_many :visitors, dependent: :destroy
  accepts_nested_attributes_for :visitors, :reject_if => lambda{|v| v[:name].blank?},
    allow_destroy: true
end
