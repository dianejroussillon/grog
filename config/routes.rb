Rails.application.routes.draw do
  resources :products
  root to: 'pages#home'
  resources :orders do
    resources :payments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
