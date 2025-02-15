Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root "stocks#index"

  #root "sessions#home"
  
  #resources :stocks
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update], param: :token
  resources :passwords, only: [:edit, :update]

  root "main#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
