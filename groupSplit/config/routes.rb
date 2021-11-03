Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :groups
  resources :users
  # root 'users#index'
  root 'static_pages#home'
  get 'signup'  => 'users#new'
end
