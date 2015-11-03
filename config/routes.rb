Rails.application.routes.draw do
  root 'lines#index'
  #resources :lines, only: [:index]
  resources :users, only: [:index, :new, :create, :show]
  resources :users, shallow: true do
    resources :lines
  end
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/profile', to: 'users#show'
end
