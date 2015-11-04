Rails.application.routes.draw do
  root 'active_lines#index'

  resources :users, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, shallow: true do
    resources :lines
  end
  resources :lines, shallow: true do
    resources :active_lines
  end
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/profile', to: 'users#show'
end
