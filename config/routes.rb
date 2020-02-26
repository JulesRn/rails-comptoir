Rails.application.routes.draw do
  get 'lapin/show'
  devise_for :users
  root to: 'pages#home'
  # 'get' to: 'meetings#lapin'
  resources :meetings, only: :show do
    resources :lapins, only: [:new]
  end
  resources :lapins, only: [:show]

  resources :likes, only: :create
  resources :users, only: [:create, :index, :show, :edit, :update, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :profile, only: [:show, :update]
end

