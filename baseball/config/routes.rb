Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users, only: [:show, :edit, :update]

  resources :teams, only: [:index, :new, :create, :show, :edit, :update ] do
   resources :players, only: [:show, :edit, :update, :create,:new]
  end
end
