Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/pages/home" => 'pages#home', as: :home
  get '/users/profile', to: 'users#profile', as: :profile
  resources :board_games, only: :index do
    post 'add_to_collection', on: :member
  end
  root to: 'pages#home'


end
