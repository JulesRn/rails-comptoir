class ProfilePolicy < ApplicationPolicy

  def show?
    return true
  end

  def update?
    return true
  end

end
