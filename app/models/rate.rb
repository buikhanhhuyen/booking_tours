class Rate < ApplicationRecord
  belongs_to :users
  belongs_to :tours
  has_many :activies, as: :activable, dependent: :destroy
end
