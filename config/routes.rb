Rails.application.routes.draw do
  root "messages#index"
  resources :messages, only: [:index, :create, :destroy]
end
