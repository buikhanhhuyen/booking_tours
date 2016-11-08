class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place

  default_scope -> { order(created_at: :desc) }

  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likable, dependent: :destroy
  has_many :activites, as: :activable, dependent: :destroy

  validates :content, presence: true
end
