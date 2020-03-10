class MeetingPolicy < ApplicationPolicy

  def show?
    return true
  end

  def pre_show?
    return true
  end

end
