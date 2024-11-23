class PlacePolicy < ApplicationPolicy

  def index?
    admin?
  end

  def new?
    admin?
  end

  def create?
    admin?
  end

  def edit?
    admin?
  end

  def update?
    admin?
  end

  class Scope < ApplicationPolicy::Scope
    def resolve
      if @user&.admin?
        scope.all
      else
        scope.none
      end
    end
  end
end
