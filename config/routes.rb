Rails.application.routes.draw do

  root 'products#index'

  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]

  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
  # get '/products/:id/data', to: 'products#show'
end
