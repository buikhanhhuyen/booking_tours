class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review
  belongs_to :commentable, polymorphic: true, optional: true

  has_many :comments, as: :commentable, dependent: :destroy
  has_many :activities, as: :activable, dependent: :destroy

  validates :content, presence: true, length: {maximum: 200}
end
