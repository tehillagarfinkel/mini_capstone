Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
  end
end
