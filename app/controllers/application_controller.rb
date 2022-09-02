# frozen_string_literal: true

# Application conytroller
class ApplicationController < ActionController::Base
  before_action :current_user
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to root_path
  end

  def current_user
    current_admin_user
  end
end
