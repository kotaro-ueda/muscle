Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :users, only: [:index, :edit, :update]
  # resources :graphs, only: [:index, :create, :show]
  resources :numbers
  resources :blogs
end
