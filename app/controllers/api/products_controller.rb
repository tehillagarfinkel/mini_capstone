class Api::ProductsController < ApplicationController
  def all_products_method
    @products = Product.all
    render "all_products.json.jb"
  end

  def one_product_method
    @products = Product.first
    render "one_product.json.jb"
  end
end
