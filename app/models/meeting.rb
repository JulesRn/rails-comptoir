class Meeting < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  belongs_to :place

  validates :user1_id, :user2_id, :place_id, :date_time, presence: true
  STATUS = ["cancelled", "occured"]
end
