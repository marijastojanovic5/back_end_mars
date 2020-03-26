Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  post '/login', to: 'users#login_create'
  resources :comments,only: [:create,:destroy]

  resources :favorites, only: [:create]
  delete '/favorites/:user_id/:mars_card_id', to: "favorites#destroy"
  resources :mars_cards,only: [:index, :show]
  
end
