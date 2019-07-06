Rails.application.routes.draw do
  resources :microposts
  resources :users
  resources :balls
  root 'users#index'
end
