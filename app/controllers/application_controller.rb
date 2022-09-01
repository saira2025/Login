# frozen_string_literal: true

# Application conytroller
class ApplicationController < ActionController::Base
  include Pundit::Authorization
end
