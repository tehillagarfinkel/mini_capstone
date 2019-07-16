class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      supplier_id: 1,
      name: params[:name],
      price: params[:price],
      description: params[:description],
    )
    @product.save
    redirect_to "/products/#{@product.id}%>"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
