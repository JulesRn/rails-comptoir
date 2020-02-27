class Availability < ApplicationRecord
  belongs_to :user

  validates :user_id, :days, presence: true
end
