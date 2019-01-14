Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :create]
      resources :drivers, only: [:index, :update, :create]
      resources :donations, only: [:index, :update, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      post '/driver/login', to: 'auth#create'
      get '/driver/profile', to: 'drivers#profile'
    end
  end
end
