# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :admin_user
end
