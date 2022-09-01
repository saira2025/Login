# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  root 'home#index'
  devise_for :admin_users
  resources :posts
end
