class Category < ApplicationRecord
  has_many :tours, dependent: :destroy
  validates_presence_of :title, :description
  validates_uniqueness_of :title
end
