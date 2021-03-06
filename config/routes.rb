Rails.application.routes.draw do
  get 'lapin/show'
  get '/goodbye', to: 'pages#goodbye'
  devise_for :users
  root to: 'pages#home'
  # 'get' to: 'meetings#lapin'
  resources :meetings, only: :show do
    resources :lapins, only: [:create]
    resources :feedbacks

    member do
      get :pre_show
    end
  end
  resources :lapins, only: [:show]

  resources :likes, only: :create
  resources :unlikes, only: :create
  resources :users, only: [:create, :index, :show, :edit, :update, :new]
  resources :availabilities, only: [ :index, :update ]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :profile, only: [:show, :update]
end

