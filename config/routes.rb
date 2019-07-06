Rails.application.routes.draw do
  resources :bets
  resources :microposts
  resources :users
  resources :balls
  root 'users#index'
end
