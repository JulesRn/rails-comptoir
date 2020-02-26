class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many_attached :photos
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user1_meetings, :class_name => 'Meeting', :foreign_key => 'user1_id'
  has_many :user2_meetings, :class_name => 'Meeting', :foreign_key => 'user2_id'
  has_many :availabilities
  has_many :lapins
  has_many :liked_users, :class_name => 'Like', :foreign_key => 'liked_user_id'
  validates :email, :name, :description, :age, :height, :sex, :sexual_orientation, :photo, presence: true

  def afterworks_dispos
    avails = self.availabilities.pluck(:days, :afterwork).delete_if { |arr| arr.last == false }
    avails.map do |arr|
      arr[1] = "afterwork"
      arr
    end
  end

  def diners_dispos
    avails = self.availabilities.pluck(:days, :diner_time).delete_if { |arr| arr.last == false }
    avails.map do |arr|
      arr[1] = "diner_time"
      arr
    end
  end

  def my_dispos
    afterworks_dispos + diners_dispos
  end

  def first_matching_dispo_with(other_user)
    matching_dispos_with(other_user).compact.first
  end

  def matching_dispos_with(other_user)
    my_dispos.map do |dispo|
      dispo if other_user.my_dispos.include?(dispo)
    end
  end

end
