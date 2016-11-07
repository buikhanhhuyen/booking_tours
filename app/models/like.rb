class Like < ApplicationRecord
  belongs_to :user
  belongs_to :likable, polymorphic: true, optional: true
  has_many :activities, as: :activable, dependent: :destroy
end
