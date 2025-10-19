Rails.application.routes.draw do
  resources :microposts
  resources :users
  root "users#hello"
  get "hello", to: "application#hello"
  get "goodbye", to: "goodbye#goodbye"
end
