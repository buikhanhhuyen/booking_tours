class Review < ApplicationRecord
  belongs_to :users, :tours, :places

  has_many :comment, dependent: :destroy
  has_many :likes, as: :likable, dependent: :destroy
  has_many :activites, as: :activable, dependent: :destroy
end
