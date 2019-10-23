Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :customers
  resources :reviews, only: [:show, :new, :create]
  resources :purchases, only: [:index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
