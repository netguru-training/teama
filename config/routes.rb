Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/pages/home" => 'pages#home', as: :home
  get '/users/profile', to: 'users#profile', as: :profile
  root to: 'pages#home'
  # post '/board_game/assign_game_to_user' => 'board_game#assign_game_to_user', as: :assign_game_to_user

end
