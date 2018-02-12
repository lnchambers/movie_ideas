Rails.application.routes.draw do

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  root "welcome#index"

  resources :movies

  resources :categories

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
