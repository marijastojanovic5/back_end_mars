Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  post '/login', to: 'users#login_create'
  resources :comments
  resources :favorites, only: [:create]
  resources :mars_cards


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
