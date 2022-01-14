class ProductsController < ApplicationController
  def index
    product = Product.all.order(:id)
    render json: product
  end

  def create
    product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    render json: product
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.save
    render json: product
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { messege: "product sucessfully deleted" }
  end
end
