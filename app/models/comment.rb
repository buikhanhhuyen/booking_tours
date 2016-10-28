class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :reviews
  belongs_to :parent_comments, class_name: Comment.name

  has_many :likes, as: :likable, dependent: :destroy
  has_many :activities, as: :activable, dependent: :destroy
  has_many :sub_comments, class_name: Comment.name,
    foreign_key: "parent_comment_id", dependent: :destroy
end
