Rails.application.routes.draw do

  #Home Page
  get '/home', to: 'homes#main', as: 'home_main'

  #Session Endpoints
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions/login', to: 'sessions#login', as: 'login'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'

  #Car Endpoints
  get '/cars/makes', to: 'cars#make_index', as: 'make_index'
  get '/cars/:make/models', to: 'cars#model_index', as: 'model_index'
  resources :cars, only: [:show]
  
  #User Endpoints
  get '/user/:id/delete', to: 'users#delete_user', as: 'delete_user'
  resources :users

  #Achievement Endpoints
  resources :achievements, only: [:show]

  #Favorite Endpoints
  patch '/favorites/add', to: 'favorites#add_to_favorites', as: 'add_to_favorites'
  resources :favorites, only: [:show]

  #Review Endpoints
  get '/user/:id/reviews', to: 'users#user_reviews', as: 'user_reviews'
  resources :reviews
  
end
