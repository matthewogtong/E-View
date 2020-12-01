Rails.application.routes.draw do
  get '/users/login', to: 'users#login', as: 'login'
  resources :users, only: [:show, :new, :create]
  resources :reviews
  resources :cars
  resources :achievements
  resources :favorites

  get '/home', to: 'users#home', as: 'home'
end
