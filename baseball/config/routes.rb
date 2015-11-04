Rails.application.routes.draw do
  devise_for :team_names
  root 'top#index'
end
