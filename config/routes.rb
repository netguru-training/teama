Rails.application.routes.draw do
  resources :users, only: [:show]

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/pages/home" => 'pages#home', as: :home
  root to: 'pages#home'
end
