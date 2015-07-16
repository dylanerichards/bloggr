Rails.application.routes.draw do
  root "pages#home"

  get 'pages/home'

  get 'pages/manage'

  get 'pages/about'
end
