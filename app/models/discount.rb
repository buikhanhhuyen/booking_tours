class Discount < ApplicationRecord
  enum :status => [:coming, :ongoing, :expried]
  scope :fdiscount, ->  { where.not(status: :expried)}

  has_many :tours
  validates_presence_of :name, :description, :percent, :start_date, :end_date
end
