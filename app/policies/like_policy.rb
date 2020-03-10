 class LikePolicy < ApplicationPolicy

  def create?
   return true
  end

  def create_meeting_if_match?(user)
    return true
  end

  def geocode_meeting?(meeting)
    return true
  end
end

