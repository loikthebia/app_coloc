Rails.application.routes.draw do

  resources :colocs
  devise_for :users
  
  root to: "pages#home"
  
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'pages/help'

  get 'pages/list_users'

  get 'pages/add_user'

end
