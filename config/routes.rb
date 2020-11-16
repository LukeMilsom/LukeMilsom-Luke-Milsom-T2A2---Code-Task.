Rails.application.routes.draw do
  resources :item_selections
  resources :carts
  resources :devs
  devise_for :users, controllers: { 
registrations: 'registrations'

  }
  root 'devs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
