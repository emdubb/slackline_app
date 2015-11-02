Rails.application.routes.draw do
  root 'lines#index'
  resources :users, only: [:new, :create]
  resources :lines, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
end
