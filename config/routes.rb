Rails.application.routes.draw do
  root to: "homes#index"

  get    "signup",    to: "signup#new"
  post   "signup",    to: "signup#create"

  get    "login",     to: "sessions#new"
  post   "login",     to: "sessions#create"
  delete "logout",    to: "sessions#destroy"

  get    "items",     to: "items#index"
  get    "items/:id", to: "items#show"

  get    "carts",     to: "carts#index"
  post   "carts",     to: "carts#create"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
