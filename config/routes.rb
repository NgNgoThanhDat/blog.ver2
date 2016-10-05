Rails.application.routes.draw do
  
  resources :pages
  resources :users
  post '/signup', to: 'users#create'
  get  '/signup',  to: 'users#new'
  root 'myapp#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
