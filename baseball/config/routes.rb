Rails.application.routes.draw do
  devise_for :uers
  root 'top#index'
end
