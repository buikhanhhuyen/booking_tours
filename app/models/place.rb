class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :description
end
