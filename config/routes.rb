Rails.application.routes.draw do
  root to:'homes#index'

  get "signup", to: "signup#new"
  post "signup", to: "signup#create"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
