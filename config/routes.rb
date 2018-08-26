Rails.application.routes.draw do
  resources :tickets
  get 'store/index'
  
  resources :carts
  resources :documents
  resources :flights
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
