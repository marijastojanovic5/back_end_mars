Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  post '/login', to: 'users#login_create'
  
  resources :comments,only: [:create,:destroy]

  resources :favorites, only: [:create]
  delete '/favorites/:user_id/:mars_card_id', to: "favorites#destroy"
  resources :mars_cards,only: [:index, :show]
  
  
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
