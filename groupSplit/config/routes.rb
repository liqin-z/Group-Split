Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :transactions
  resources :members
  # root :to => redirect('/transactions/new')
  get 'groupviews/index'
  get '/', to: redirect('/groupviews/index')
  root :to => redirect('/groupviews/index')
end
