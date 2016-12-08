class Discount < ApplicationRecord
  enum :status => [:ongoing, :happened, :expried]

  has_many :tours
end
