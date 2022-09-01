# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  devise_for :admin_users
end
