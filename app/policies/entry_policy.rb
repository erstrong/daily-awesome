class EntryPolicy < ApplicationPolicy
  attr_reader :user, :record
  
  def index?
    true
  end

  def show?
    record.public? || (user.present? && record.user == user) 
  end

  def create?
    user.present? 
  end

  def new?
    create?
  end

  def update?
    user.present? && record.user == user
  end

  def edit?
    update?
  end

  def destroy?
    user.present? && record.user == user
  end
end