Rails.application.routes.draw do
  root to: 'temp#index'

  devise_for :users # Must be before users resource
  resources :users, only: %i(index new create destroy)
end
