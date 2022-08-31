# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users
  resources :users
end
