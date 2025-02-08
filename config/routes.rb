Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root "stocks#index"

  #root "sessions#home"
  
  #resources :stocks
  resources :registrations, only: [:new, :create]
  resources :session, only: [:new, :create, :destroy]
  resources :password_reset
  resources :passwords, only: [:edit, :update]

  root "main#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
