class Meeting < ApplicationRecord
  belongs_to :current, :class_name => 'User'
  belongs_to :matched, :class_name => 'User'
  belongs_to :place
end
