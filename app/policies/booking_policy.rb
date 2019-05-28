class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def index?
    true
  end

  def create?
    true
  end

  def mybookings?
    true
  end

  def myrents?
    true
  end

  def accept?
    true
  end

  def show?
    true
  end
end
