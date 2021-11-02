Rails.application.routes.draw do
  resources :groups
  resources :users
  root 'users#index'
end
