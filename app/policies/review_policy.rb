class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.booking.user == user && record.booking.reviews.count == 0
  end
end
