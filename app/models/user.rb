class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes
  has_many :rates
  has_many :activities
  has_many :bank_accounts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
