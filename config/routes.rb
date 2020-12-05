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
  get '/cars/:car_id/reviews', to: 'cars#car_reviews', as: 'car_reviews'
  resources :cars, only: [:show]
  
  #User Endpoints
  get '/user/:id/delete', to: 'users#delete_user', as: 'delete_user'
  get '/user/:id/favorites', to: 'users#user_favorites', as: 'user_favorites'
  resources :users

  #Achievement Endpoints
  resources :achievements, only: [:show]

  #Favorite Endpoints
  post '/favorites/:car_id/add', to: 'favorites#add_to_favorites', as: 'add_to_favorites'

  #Review Endpoints
  patch '/reviews/:id/add_like', to: 'reviews#add_a_like', as: 'add_a_like'

  get '/user/:id/reviews', to: 'users#user_reviews', as: 'user_reviews'
  resources :reviews


  
end
