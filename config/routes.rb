Rails.application.routes.draw do

  get 'customer/signup'
  post 'customer/signup' => 'customer#create'
  get 'customer/signin'
  get 'customer/signout'
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



  root to: 'vehicles#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
