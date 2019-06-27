Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/all_products_url" => "products#all_products_method"
    get "/one_product_url" => "products#one_product_method"
    get "/one_product_url/:id" => "products#one_product_method"
  end
end
