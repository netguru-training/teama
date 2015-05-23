Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/pages/home" => 'pages#home', as: :home
  get '/users/profile', to: 'users#profile', as: :profile
  resources :collections, only: [:destroy]
  resources :board_games, only: [:index, :edit, :update, :show] do
    post 'add_to_collection', on: :member
    resources :reviews, only: [:create] do
      resources :comments, only: :create
    end
  end

  resources :reviews do
    resources :comments, only: :create
  end
  root to: 'pages#home'

end
