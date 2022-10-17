Rails.application.routes.draw do
  resources :sportplayers
  resources :sportsmen
  resources :athletes
  devise_for :users
  # get 'home/index'
  root 'home#index'
end
