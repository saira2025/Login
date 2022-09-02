# frozen_string_literal: true

# Post Policy
#
class PostPolicy < ApplicationPolicy
  def update?
    admin_user.present?
  end

  def new?
    admin_user.present?
  end
end
