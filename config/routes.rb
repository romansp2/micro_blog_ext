# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :comment_options
  resources :post_options
  resources :term_options
  resources :user_options
  resources :comments
  resources :links
  resources :options
  resources :posts
  resources :term_relationships
  resources :term_taxonomies
  resources :terms
  resources :users
  root 'root#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
