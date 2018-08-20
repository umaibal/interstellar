Rails.application.routes.draw do
  get 'store/index'
  
  resources :carts
  resources :tickets
  resources :documents
  resources :flights
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
