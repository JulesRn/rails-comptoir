class Place < ApplicationRecord
  has_many :meetings

  validates :name, :address, :opening_time, presence: true
end
