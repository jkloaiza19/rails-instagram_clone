# frozen_string_literal: true

Rails.application.routes.draw do
  resources :likes
  resources :posts
  devise_for :users
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  post 'toggle_like', to: 'likes#toggle_like', as: :toggle_like
end
