class Availability < ApplicationRecord
  belongs_to :user

  validates :user_id, :days, :afterwork, :diner_time, presence: true
end
