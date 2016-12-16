class Tour < ApplicationRecord
  enum :currency => [:vnd, :usd]
  enum :status => [:ongoing, :expried]

  belongs_to :category
  belongs_to :discount
  belongs_to :start_place, class_name: 'Place', foreign_key: 'start_place_id'
  belongs_to :end_place, class_name: 'Place', foreign_key: 'end_place_id'

  has_many :bookings, dependent: :destroy
  has_many :visitors, through: :bookings

  validates :end_date, presence: true, date: { after: :start_date,
    message: "must after Start date" }
  validates :start_date, presence: true,
    date: { after_or_equal_to: Proc.new { Date.today },
    message: "must be at least #{(Date.today + 1).to_s}" }, on: :create
  validates :start_place_id, presence: true
  validates :end_place_id, presence: true
  validates :category_id, presence: true
  # validate :check_discount

  # def check_discount
  #   if self.start_date < self.discount.start_date || self.end_date > self.discount.end_date
  #     errors.add :discount, message: "Tour must be happened on duration of discount"
  #   end
  # end
end
