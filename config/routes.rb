Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/secret'
  root to: "event#index"

  resources :event
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
