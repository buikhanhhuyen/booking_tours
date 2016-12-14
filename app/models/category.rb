class Category < ApplicationRecord
  has_many :tours, dependent: :destroy
  validates_presence_of :title, :description
end
