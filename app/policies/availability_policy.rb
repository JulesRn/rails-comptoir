class AvailabilityPolicy < ApplicationPolicy


   def edit?
   return true
  end

  def update?
   return true
  end

  def index?
    return true
  end
end
