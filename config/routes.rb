Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :houses
      resources :users, only: [:show] do
        resources :favorite_houses, only [:index, :create, :destroy]
      end
      #get '/users/:user_id/favorites', to: 'favorite_houses#index'
    end
  end
  
  root to: "static#home"
end
