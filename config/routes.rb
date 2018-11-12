Rails.application.routes.draw do
  resources :checkouts
  resources :locations
  resources :computers
  resources :items
  resources :users
  get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
end
