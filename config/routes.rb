Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root "posts#index"

  %w(manage about).each do |page|
    get "pages/#{page}", path: "/#{page}"
  end

  get '/posts/:id/:heart', to: 'posts#upvote', as: 'post_upvote'
end
