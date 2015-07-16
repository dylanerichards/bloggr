Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root "posts#index"

  get 'pages/home'
  get 'pages/manage', path: '/manage'
  get 'pages/about', path: '/about'
  
  get '/posts/heart/:id', to: 'posts#upvote', as: 'post_upvote'
end
