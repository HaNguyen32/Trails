Rails.application.routes.draw do
  devise_for :users
  root to: 'shares#index'
  resources :shares
  resources :users, only: :show
end
