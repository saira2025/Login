# frozen_string_literal: true

# Application Policy
#
class ApplicationPolicy
  attr_reader :admin_user, :record

  def initialize(admin_user, record)
    @admin_user = admin_user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    admin_user.present?
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def resolve
    raise NotImplementedError, "You must define #resolve in #{self.class}"
  end
end
