Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :orders
  resources :usuarios, as: :users, only: [:show, :update]

  authenticated :user do
  	root 'home#index'
  end

  unauthenticated :user do
  	root 'home#unregistered'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
