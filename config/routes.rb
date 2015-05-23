Rails.application.routes.draw do
  get "/pages/home" => 'pages#home', as: :home
  root to: 'pages#home'
end
