Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

    
  root to: "static#home"
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :houses
      resources :users, only: [:show] do
        resources :favorite_houses, only: [:index, :create, :destroy]
      end
    end
  end


end
