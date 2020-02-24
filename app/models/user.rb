class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :current_meetings, :class_name => 'Meeting', :foreign_key => 'current_id'
  has_many :matched_meetings, :class_name => 'Meeting', :foreign_key => 'matched_id'
  has_many :availabilities
end
