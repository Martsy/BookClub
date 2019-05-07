Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
  resources :books, only: [:index, :show, :new, :create]
  resources :authors, only: [:show, :new, :create]
  resources :users, only: [:show]

  # resources :books, only: [:new, :create, :show] do
  #   resources :authors, only: [:new, :create]
  end


# Rails.application.routes.draw do
#   root "home#welcome"
#   resources :books, only: [:index, :show, :new, :create] do
#     resources :reviews, only: [:new, :index, :create]
#   end
