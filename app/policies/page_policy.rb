class PagePolicy < ApplicationPolicy

  def home?
    return true
  end

  def goodbye?
    return true
  end

end
