Rails.application.routes.draw do
  root to: 'temp#index'

  resources :users, only: %i(index new create)
  devise_for :users
end
