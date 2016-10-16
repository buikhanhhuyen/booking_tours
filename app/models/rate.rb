class Rate < ApplicationRecord
  belongs_to :users, :tours
  has_many :activies, as: :activable, dependent: :destroy
end
