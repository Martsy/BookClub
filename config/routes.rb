Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
  resources :books, only: [:index, :show]
  resources :authors, only: [:show]
  resources :users, only: [:show]
  resources :books, only: [:new, :create]
end
