Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end
end
