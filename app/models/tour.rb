class Tour < ApplicationRecord
  enum :currency => [:vnd, :usd]
  enum :status => [:ongoing, :happened, :expried]

  belongs_to :category
  belongs_to :discount
  belongs_to :place

  has_many :bookings, dependent: :destroy

  validates :end_date, presence: true, date: { after: :start_date,
    message: "must after Start date" }
  validates :start_date, presence: true,
    date: { after_or_equal_to: Proc.new { Date.today },
    message: "must be at least #{(Date.today + 1).to_s}" }, on: :create
end
