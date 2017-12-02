Rails.application.routes.draw do
  post 'set_flag', to: 'flags#new'
  get 'get_flag', to: 'flags#show'

  get 'others/index'

  root 'others#index'

  devise_for :users

  resources :products
  resources :flags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
