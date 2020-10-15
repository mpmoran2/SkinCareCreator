Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
  resources :routines, only: [:index, :create, :new, :destroy] do
    resources :steps
  end
  


  get '/oops', to: 'application#oops'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/welcome', to: 'users#welcome'
  

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/products/oily', to: 'products#oily'
  get '/products/dry', to: 'products#dry'
  get '/products/normal', to: 'products#normal'
  get '/products/combo', to: 'products#combo'
  get '/products/acne_prone', to: 'products#acne_prone'
  get '/products/all_skin', to: 'products#all_skin'
  get '/products/mature', to: 'products#mature'

  get 'products/cleanser', to: 'products#cleanser'
  get 'products/toner', to: 'products#toner'
  get 'products/mask', to: 'products#mask'
  get 'products/treatement', to: 'products#treatement'
  get 'products/essence', to: 'products#essence'
  get 'products/serum', to: 'products#serum'
  get 'products/moisturizer', to: 'products#moisturizer'
  get 'products/oil_cleanse', to: 'products#oil_cleanse'
  get 'products/lip_treat', to: 'products#lip_treat'
  get 'products/eye_cream', to: 'products#eye_cream'
  get 'products/spf', to: 'products#spf'
  get 'products/ampule', to: 'products#ampule'

  root to: 'application#home' 
  
end
