Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :posts, only: [:index, :show, :new, :create]
  resources :users, only: [:index, :new, :show, :create]
  resources :comments, only: [:index, :new, :show, :create, :destroy, :edit]

  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]


end
