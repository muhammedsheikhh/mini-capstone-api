class CartedProductsController < ApplicationController
  def index
    #pp current_user
    cartedproduct = current_user.carted_products
    render json: cartedproduct
  end

  def create
    cartedproduct = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if cartedproduct.save
      render json: cartedproduct
    else
      render json: { errors: cartedproduct.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
