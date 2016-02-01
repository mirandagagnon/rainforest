Rails.application.routes.draw do

  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  resources :products

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  resources :products do
   resources :reviews, only: [:show, :create, :destroy]
  end

end
