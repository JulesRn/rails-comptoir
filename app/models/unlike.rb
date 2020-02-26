class Unlike < ApplicationRecord
  belongs_to :user
  belongs_to :unliked_user, class_name:'User'
end
