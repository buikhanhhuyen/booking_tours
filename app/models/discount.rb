class Discount < ApplicationRecord
  enum :status => [:ongoing, :happened, :expried]

  has_many :tours
  validates_presence_of :name, :description, :percent, :start_date, :end_date
end
