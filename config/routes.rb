Rails.application.routes.draw do

  devise_for :users
  devise_for :users
  get 'user/new'

  get 'user/show'
  
  root to: "pages#home"
  
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'pages/help'

end
