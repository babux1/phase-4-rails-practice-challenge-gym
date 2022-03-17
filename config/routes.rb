Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :gyms, only: [:index, :show, :delete]
  resources :clients, only: [:show, :index]
end
