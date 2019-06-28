class Api::ProductsController < ApplicationController
  def index
    @products = Product.all.order(:id)
    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["directions"],
    )
    @product.save
    render "show.json.jb"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    @product.save
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "Product has been deleted" }
  end
end
