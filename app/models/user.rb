class User < ApplicationRecord

  enum role: [:admin, :member]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :activities
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
    :trackable, :validatable
end
