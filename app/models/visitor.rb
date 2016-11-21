class Visitor < ApplicationRecord
  enum :gender => [:male, :female]

  belongs_to :booking
end
