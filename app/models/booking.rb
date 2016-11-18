class Booking < ApplicationRecord
  enum :status => [:uncheck, :checked, :rejected]

  belongs_to :user
  belongs_to :discount
  belongs_to :tour
  has_one :bill
  has_many :activities, as: :activable, dependent: :destroy
  has_many :visitors, dependent: :destroy
  accepts_nested_attributes_for :visitors, :reject_if => lambda{|v| v[:name].blank?},
    allow_destroy: true
end
