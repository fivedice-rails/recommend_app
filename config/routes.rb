Rails.application.routes.draw do
  root 'recommends#index'
  resources :books
  resources :movies
  
  resources :recommends, only: [:index]
  
  devise_for :users

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
