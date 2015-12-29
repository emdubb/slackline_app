Rails.application.routes.draw do
  root 'api#index'

  namespace :api do
    resources :users, only: [:index, :new, :create, :show, :update], shallow: true do
      resources :lines, shallow: true do
        resources :active_lines
      end
    end
    # resources :sessions, only: [:new, :create, :destroy]
    # get '/login', to: 'sessions#new'
    # get '/profile', to: 'users#edit'
  end
end
