Rails.application.routes.draw do
  resources :user_informations
  devise_for :users
resources :users, only: [:index, :edit, :update, :show]
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
