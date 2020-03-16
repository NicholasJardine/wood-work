Rails.application.routes.draw do
  get 'clients/create'
  get 'clients/update'
  get 'buyers/show'
  get 'buyers/create'
  get 'pages/home'
  get 'pages/payments'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/sociial_outreach'
  get 'pages/eft_details'
  get 'products/index'
  get 'products/show'
  get 'categories/index'
  get 'categories/show'
  get 'categories/home'
  get 'categories/art'
  get 'categories/garden'
  devise_for :users
  root to: 'pages#home'
  get 'categories/home'
  get 'categories/garden'
  get 'categories/art'
  get 'home/index'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/social_outreach'
  get 'carts/show'

  resources :customers
  resources :order_items
  resource :carts, only: [:show]
  resources :buyers, only: [:update, :new, :create]
  resources :clients, only: [ :create, :update, :new]


  resources :categories, only: [:index, :show, :home, :art, :garden] do
    resources :products, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
