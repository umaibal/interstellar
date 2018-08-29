Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
 
  resources :users

  scope '(:locale)' do
    get 'store/index'

    resources :orders
    resources :tickets  
    resources :carts
    resources :documents
    resources :flights
  end

end
