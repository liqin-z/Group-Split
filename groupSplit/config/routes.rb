Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :transactions
  # root :to => redirect('/transactions/new')
  get 'groupviews/index'
  root :to => redirect('/groupviews/index')
end
