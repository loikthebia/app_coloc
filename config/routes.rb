Rails.application.routes.draw do

  get 'coloc/index'

  get 'coloc/create'

  get 'coloc/new'

  get 'coloc/edit'

  get 'coloc/show'

  get 'coloc/update'

  get 'coloc/destroy'

  devise_for :users
  resources :colocs
  
  root to: "pages#home"
  
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'pages/help'

  get 'pages/account'

end
