Rails.application.routes.draw do 

  get 'sessions_auth/create'
  get 'sessions_auth/destroy'
  get '/auth/:provider/callback', to: 'sessions_auth#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'  
  resources :users do
  	member do
      get :following, :followers
    end
  end
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  
  root 'myapp#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
