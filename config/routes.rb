Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products do
    resources :comments
  end
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'simple_pages#index'
  resources :orders, only: [:index, :show, :create, :destroy]
  post 'simple_pages/thank_you'
  post 'payments/create'
  mount ActionCable.server => '/cable'

end
