Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
  resources :routines, only: [:index, :create, :new, :destroy] do
    resources :steps
  end
  resources :users, only: [:show, :edit, :update] 



  get '/oops', to: 'application#oops'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
 
  get '/welcome', to: 'users#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/cleansers', to: 'products#cleanser', as: 'cleansers'
  get '/toners', to: 'products#toner'
  get '/masks', to: 'products#mask'
  get '/treatements', to: 'products#treatement'
  get '/essences', to: 'products#essence'
  get '/serums', to: 'products#serum'
  get '/moisturizers', to: 'products#moisturizer'
  get '/oil_cleanses', to: 'products#oil_cleanse'
  get '/lip_treats', to: 'products#lip_treat'
  get '/eye_creams', to: 'products#eye_cream'
  get '/spfs', to: 'products#spf'
  get '/ampules', to: 'products#ampule'

  root to: 'application#home' 
  get '/auth/github/callback'=> 'sessions#create'
  
end
