Rails.application.routes.draw do
  get 'items/new'
  get 'items/create'
  get 'items/show'
  devise_for :users
  root to: 'application#home'
  resources :items, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
