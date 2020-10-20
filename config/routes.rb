Rails.application.routes.draw do
  devise_for :users
  get 'recipie/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/index'
  resources :recipie
  resources :category
  get 'home/dashboard'
  resources :upload
  resources :comments
end
