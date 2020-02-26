Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :meetings, only: [:show, :destroy]
  resources :likes, only: :create
  resources :unlikes, only: :create
  resources :users, only: [:create, :index, :show, :edit, :update, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :profile, only: [:show, :update]
end
