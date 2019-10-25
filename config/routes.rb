Rails.application.routes.draw do
  # get 'sessions/login'
  resources :items, only: [:index, :show, :update, :destroy]
  resources :categories, only: [:index, :show]
  resources :customers
  resources :reviews
  resources :purchases, only: [:index, :show]

  get "/login", to: 'sessions#login'
  post "/login", to: "sessions#process_login"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
