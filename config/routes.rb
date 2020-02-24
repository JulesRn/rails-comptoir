Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :meetings, only: :show
  resources :likes, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
