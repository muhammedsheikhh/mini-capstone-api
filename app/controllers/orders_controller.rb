class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    order = current_user.orders
    render json: order
  end

  def create
    cs = []
    sum = 0
    current_user.carted_products.each do |cp|
      product = Product.find_by(id: cp.product_id)
      t = product.price * cp.quantity
      cs << t
      cs.each do |s|
        sum += s
      end
    end
    sum
    tax = sum * 0.09
    order = Order.new(
      user_id: current_user.id,
      subtotal: sum,
      tax: tax,
      total: sum + tax,
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
