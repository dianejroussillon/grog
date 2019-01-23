Rails.application.routes.draw do
  root to: 'pages#home'
  resources :products, :constraints => { :id => /[^\/]+/ }
  resources :orders do
    resources :payments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



  # get 'about', to: 'pages#about', as: :about
  # get 'contact', to: 'pages#contact', as: :contact

#          products GET    /products(.:format)                              products#index
#                   POST   /products(.:format)                              products#create
#       new_product GET    /products/new(.:format)                          products#new
#      edit_product GET    /products/:id/edit(.:format)                     products#edit
#           product GET    /products/:id(.:format)                          products#show
#                   PATCH  /products/:id(.:format)                          products#update
#                   PUT    /products/:id(.:format)                          products#update
#                   DELETE /products/:id(.:format)                          products#destroy

#              root GET    /                                                pages#home
#    order_payments POST   /orders/:order_id/payments(.:format)             payments#create
# new_order_payment GET    /orders/:order_id/payments/new(.:format)         payments#new
#            orders GET    /orders(.:format)                                orders#index
#                   POST   /orders(.:format)                                orders#create
#         new_order GET    /orders/new(.:format)                            orders#new
#        edit_order GET    /orders/:id/edit(.:format)                       orders#edit
#             order GET    /orders/:id(.:format)                            orders#show
#                   PATCH  /orders/:id(.:format)                            orders#update
#                   PUT    /orders/:id(.:format)                            orders#update
#                   DELETE /orders/:id(.:format)                            orders#destroy
