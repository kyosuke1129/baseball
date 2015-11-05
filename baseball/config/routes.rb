Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users, only: [:show, :edit, :update]
  resources :teams, only: [:show, :edit, :update]
  resources :players, only: [:show, :edit, :update, :create]
end
