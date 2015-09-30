Rails.application.routes.draw do
  root 'dashboard#index'

  resources :dashboard, only: [:index]

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
end
