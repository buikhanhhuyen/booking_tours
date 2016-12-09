class Booking < ApplicationRecord
  enum :status => [:unpaid, :paid]

  belongs_to :user
  belongs_to :tour
  has_one :bill
  has_many :activities, as: :activable, dependent: :destroy
  has_many :visitors, dependent: :destroy
  accepts_nested_attributes_for :visitors, :reject_if => lambda{|v| v[:name].blank?},
    allow_destroy: true
  validate :check_seat
  validates :visitors, length: {minimum: 1}

  private
  def check_seat
    if self.tour.visitors.count + self.visitors.count > self.tour.max_visitors
      errors.add :visitors, message: "The number of visitors must be less or equal than max visitors."
    end
  end
end
