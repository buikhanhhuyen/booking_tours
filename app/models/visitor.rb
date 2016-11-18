class Visitor < ApplicationRecord
  enum :genders => [:male, :female]

  belongs_to :booking
end
