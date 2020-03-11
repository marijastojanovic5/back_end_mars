Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :favorites
  resources :mars_cards


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
