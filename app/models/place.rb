class Place < ApplicationRecord
  has_many :meetings

  validates :name, :address, presence: true
end
