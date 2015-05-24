Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/pages/home" => 'pages#home', as: :home
  get '/users/profile', to: 'users#profile', as: :profile
  get '/users/index', to: 'users#index', as: :user_index
  post '/friends/acceptance', to: 'friends#acceptance', as: :accept_user

  resources :board_games, only: [:index, :edit, :update, :show] do
    resources :collections, only: [:destroy, :create, :update]
    resources :reviews, only: :create
  end

  resources :friends, only: [:index, :create]

  resources :reviews do
    resources :comments, only: :create
  end

  root to: 'pages#home'
end
