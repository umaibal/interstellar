Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
 
  resources :users

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "en"} do
    resources :orders
    resources :tickets  
    resources :carts
    resources :documents
    resources :flights
    
    root 'store#index', as: 'store_index', via: :all
    # get '/' => 'store#index'
    # get 'store/index' => 'store#index'
  end

end
