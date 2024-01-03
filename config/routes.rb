Rails.application.routes.draw do
  root to:'homes#index'

  get "signup", to: "signup#new"
  post "signup", to: "signup#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
