Rails.application.routes.draw do
  devise_for :users
  devise_for :uers
  root 'top#index'
end
