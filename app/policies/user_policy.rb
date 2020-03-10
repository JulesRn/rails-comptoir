class UserPolicy < ApplicationPolicy

  def show?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def edit?
    return true
  end

  def update?
   return true
  end

  class Scope < Scope
     def resolve
       scope.all
     end
  end

end
