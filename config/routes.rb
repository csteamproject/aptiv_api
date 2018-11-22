Rails.application.routes.draw do
  resources :tickets
  resources :checkouts
  resources :locations
  resources :computers
  resources :items
  resources :users
  get 'users/index'
  resources :sessions
  resources :csvuploads
end
