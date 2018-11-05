Rails.application.routes.draw do

  
  #get 'about/index'
  # get 'vehicles/index'
  # get 'vehicles/show'
  resources :vehicles, only:[:index, :show]
  resources :about , only:[:index]
  # #get 'cars', to: 'cars#index'

  root to: 'vehicles#index'

  #get 'cars/:id' , to: 'cars#show' , id: /\d+/

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
