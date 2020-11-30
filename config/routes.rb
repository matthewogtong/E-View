Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :cars
  resources :achievements
  resources :favorites

end
