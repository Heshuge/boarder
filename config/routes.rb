Rails.application.routes.draw do
  resources :shipments
  resources :invoices
  resources :ladings
  resources :manifests
  root to: 'visitors#index'
  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users
  resources :users
end
