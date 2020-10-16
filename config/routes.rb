Rails.application.routes.draw do
  resources :members
  resources :messages
  resources :reviews
  resources :movies
  resources :clubs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
