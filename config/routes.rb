Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :designs, only: [:index, :show, :create, :update, :destroy]
resources :bumps, only: [:index, :show, :create, :update, :destroy]
end
