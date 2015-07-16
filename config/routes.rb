Rails.application.routes.draw do
  resources :posts
  root "posts#index"

  get 'pages/home'
  get 'pages/manage', path: '/manage'
  get 'pages/about', path: '/about'
end
