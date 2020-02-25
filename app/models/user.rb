class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user1_meetings, :class_name => 'Meeting', :foreign_key => 'user1_id'
  has_many :user2_meetings, :class_name => 'Meeting', :foreign_key => 'user2_id'
  has_many :availabilities
  has_many :liked_users, :class_name => 'Like', :foreign_key => 'liked_user_id'

  validates :email, :name, :description, :age, :height, :sex, :sexual_orientation, :photo, presence: true
end
