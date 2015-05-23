Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/pages/home" => 'pages#home', as: :home
  get '/users/profile', to: 'users#profile', as: :profile

  resources :board_games, only: [:index, :edit, :update, :show] do
    resources :collections, only: [:destroy, :create, :update]
  end

  root to: 'pages#home'
end
