Rails.application.routes.draw do
  root 'api#index'

  namespace :api do
    resources :users, only: [:index, :create, :show, :update, :destroy], shallow: true do
      resources :lines, only: [:index, :create, :update, :destroy], shallow: true do
        resources :active_lines, only: [:index, :create, :update]
      end
    end
    # resources :sessions, only: [:new, :create, :destroy]
    # get '/login', to: 'sessions#new'
    # get '/profile', to: 'users#edit'
  end
end
