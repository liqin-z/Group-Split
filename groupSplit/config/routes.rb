Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :transactions
  resources :groups
  resources :groupviews
  # root :to => redirect('/transactions/new')
#   rget 'groupviews/index'
   get '/groupviews/index', to: 'groupviews#index'
   post '/groupviews/index', to: 'groupviews#index'
   root :to => redirect('/groups#index')
end
