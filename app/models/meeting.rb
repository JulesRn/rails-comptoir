class Meeting < ApplicationRecord
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  belongs_to :place
  has_many :feedbacks

  validates :user1_id, :user2_id, :place_id, :start_hour, :start_time, presence: true
  STATUS = ["cancelled", "occured"]


  def time_for_feedback?
    # (time du debut du meeting + 30min ) > Time.zone.now
    # DateTime.new(start_time,start_hour) > Time.zone.now

  end
end
