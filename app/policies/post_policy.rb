# frozen_string_literal: true

# Post Policy
#
class PostPolicy < ApplicationPolicy
  def update?
    admin_user.present? && admin_user == admin_user.posts
  end

  def new?
    admin_user.present?
  end

  def show?
    true
  end

  def create?
    admin_user.present?
  end

  def edit?
    admin_user.present?
  end

  def destroy?
    true
  end

end
