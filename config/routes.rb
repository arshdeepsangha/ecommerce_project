Rails.application.routes.draw do

 
  get 'cart/destroy'
  #devise_for :users

  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :vehicles, only:[:index, :show]
  resources :pages ,only:[:show]
  
  get ':permalink' , to: 'pages#permalink'
  get 'static_about', to: 'pages#about' , as: 'about'

  resources :search ,only:[:index] do
    collection do
      get 'results'
    end
  end

  resources :filter ,only:[:index] do
    collection do
      get 'results'
    end
  end

  resources :category ,only:[:index] do
    collection do
      get 'results'
    end
  end

   post 'cart/create' , to: "cart#create"
   get '/cart/show' ,to: "cart#show", as: 'showcart'
   get '/cart/clear' , to: "cart#clear" , as: 'clear'

   post 'cart/checkout' , to:"cart#checkout"

  root to: 'vehicles#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
