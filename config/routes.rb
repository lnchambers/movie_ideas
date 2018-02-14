Rails.application.routes.draw do

  root "welcome#index"

  get "/login", to: "sessions#new"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  namespace :admin do
    resources :categories, only: [:show, :index, :edit, :new]
  end

  resources :categories, only: [:show, :index, :update, :destroy, :create]

  resources :users do
    resources :movies
  end

  resources :movies do
    post "/ratings", to: "ratings#create"
  end

  post "/movie-images", to: "movieimages#create"

  get "/users/:id/movies", to: "user#index"

  get "/admin/dashboard", to: "admin/dashboard#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
