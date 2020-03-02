class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :meetings
  validates :name, :address, :opening_time, presence: true
end
