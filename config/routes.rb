Rails.application.routes.draw do
  root to: 'products#show'
  resources :products
  resources :orders do
    resources :payments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
