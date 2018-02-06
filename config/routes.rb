Rails.application.routes.draw do
  resources :socks, only: [:index, :show, :create, :update, :destroy]
  resources :designs, only: [:index, :show, :create, :update, :destroy]
  resources :bumps, only: [:index, :show, :create, :update, :destroy]
end
