Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/sociial_outreach'
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

  resources :order_items
  resource :carts, only: [:show]

  resources :categories, only: [:index, :show, :home, :art, :garden] do
    resources :products, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
