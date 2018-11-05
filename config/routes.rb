Rails.application.routes.draw do


  resources :vehicles, only:[:index, :show]
  
  get 'about', to: 'pages#about' , as: 'about'



  root to: 'vehicles#index'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
