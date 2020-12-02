Rails.application.routes.draw do
  get '/home', to: 'homes#main', as: 'home_main'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions/login', to: 'sessions#login', as: 'login'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  resources :users, only: [:show, :new, :create]
  resources :reviews
  resources :cars
  resources :achievements
  resources :favorites
end
