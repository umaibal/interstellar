Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
 
  resources :users
  resources :orders
  resources :tickets  
  resources :carts
  resources :documents
  resources :flights

  get 'store/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
