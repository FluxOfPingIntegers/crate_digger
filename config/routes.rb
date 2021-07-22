Rails.application.routes.draw do
  
  root to: "static#home"
  
  get "login", to: "static#login", as: :login
  
  post "sessions", to: "session#create", as: :new_session
  
  delete "sessions", to: "session#destroy", as: :logout

  # post "/auth/facebook/callback", to: "users#facebook"
  get "/auth/google_oauth2/callback", to: "session#google" # needs configuring
  
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show] do
    resources :comments, only: [:edit, :update, :destroy]
  end
  
  resources :states, only: [:index]
  post "states", to: "state#search", as: :state_search
  resources :states, only: [:show] do
    resources :cities, only: [:index, :show]
  end
  
  resources :stores, only: [:show] do
    resources :comments, only: [:create], as: :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
