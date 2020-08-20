Rails.application.routes.draw do
  get 'dashboard/show'
  devise_for :users
  root to: 'pages#home'
  get 'user/dashboard/', to: 'dashboard#show'

  resources :items do
    resources :bookings, only: [:new, :create]
  end


  resources :bookings, only: [:show] do
    resources :reviews, only: [:new, :create]
  end

  resources :items, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
