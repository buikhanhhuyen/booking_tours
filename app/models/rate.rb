class Rate < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  has_many :activies, as: :activable, dependent: :destroy
end
