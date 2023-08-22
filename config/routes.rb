Rails.application.routes.draw do
  devise_for :users
  root to: 'share#index'
  resources :shares
end
