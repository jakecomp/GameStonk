Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "stocks#index"
  
  resources :stocks

  # Defines the root path route ("/")
  # root "posts#index"
end
