Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'comments/index'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'stores/show'
  get 'cities/index'
  get 'cities/show'
  get 'session/create'
  get 'session/destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
