class Activity < ApplicationRecord
  belongs_to :users
  belongs_to :activable, polymorphic: true, optional: true
end
