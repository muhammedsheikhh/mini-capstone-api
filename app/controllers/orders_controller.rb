class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    order = current_user.orders
    render json: order
  end

  def create
    product = Product.find_by(id: params[:product_id])
    x = product.price
    t = x * 0.09
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: x,
      tax: t,
      total: x + t,
    )
    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    order = Order.find_by(id: params[:id])
    if order.user_id == current_user.id
      render json: order
    else
      render json: { message: "login to see" }
    end
  end
end
