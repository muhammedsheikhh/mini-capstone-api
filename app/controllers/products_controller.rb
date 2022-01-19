class ProductsController < ApplicationController
  def index
    product = Product.all.order(:id)
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
    )
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
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
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { messege: "product sucessfully deleted" }
  end
end
