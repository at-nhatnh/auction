Rails.application.routes.draw do
  resources :campaigns
  resources :products
  devise_for :users

  root 'products#index'
  get '/auctions', to: 'products#list_campaigns', as: :list_campaigns
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
