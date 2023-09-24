Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "home#index"
  resources :conversations, only: [:create]
end
