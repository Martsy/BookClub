Rails.application.routes.draw do # ~> NameError: uninitialized constant Rails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  resources :authors, only: [:show]
  
  resources :users, only: [:show] do
    resources :reviews, only: [:destroy]
  end 
  
  resources :books, only: %i[index show new create] do
    resources :reviews, only: %i[new create destroy]
  end
end
  
