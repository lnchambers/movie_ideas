Rails.application.routes.draw do

  root "welcome#index"

  get "/login", to: "sessions#new"

  resources :movies

  resources :categories

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
