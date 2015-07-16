Rails.application.routes.draw do
  resources :posts
  root "posts#index"

  get 'pages/home'
  get 'pages/manage'
  get 'pages/about'
end
