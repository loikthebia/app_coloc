Rails.application.routes.draw do

  get 'user/new'

  get 'user/show'

  devise_for :users
  
  root to: "pages#home"
  
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'pages/help'

end
