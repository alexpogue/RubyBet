Rails.application.routes.draw do
  resources :bet_events
  resources :bets
  resources :microposts
  resources :users
  resources :balls
  root 'users#index'
end
