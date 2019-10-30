Rails.application.routes.draw do
  devise_for :users
  root to: 'groups#index'
  resources :users, only: [:edit, :update] 
  resources :groups, only: [:new, :create, :edit, :updete]
    resources :messages, only: [:index]
end
