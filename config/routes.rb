Rails.application.routes.draw do
  get 'products/index'

  devise_for :users

  resourcess onyl: [:show, :index]
  

  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
