Rails.application.routes.draw do
  root 'homes#index'
  # get 'homes/index'
  devise_for :users

  resources :tweets

  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
