EmberProducts::Application.routes.draw do

defaults format: :json do
  get '/products', to: "products#index"
  get '/products/:id', to: 'products#show'
  delete '/products/:id', to: 'products#delete'
  post '/products', to: 'products#create'
  put '/products/:id', to: 'products#update'
  
  get '/carts/:id', to: 'carts#show'
  post '/carts', to: 'carts#create'

  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
  delete '/items/:id', to: 'items#delete'
  post '/items', to: 'items#create'

  get '/orders', to: 'orders#index'
  get '/orders/:id', to: 'orders#show'
  post '/orders', to: 'orders#create'
  put '/orders/:id', to: 'orders#update'


end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
