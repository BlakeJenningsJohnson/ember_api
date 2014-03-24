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
    put '/items/:id', to: 'items#update'


    get '/orders', to: 'orders#index'
    get '/orders/:id', to: 'orders#show'
    post '/orders', to: 'orders#create'
    put '/orders/:id', to: 'orders#update'
    delete '/orders/:id', to: 'orders#delete'

  end
end
