class BankAccount < ApplicationRecord
  belongs_to :users
  has_many :payments, dependent: :destroy
end
