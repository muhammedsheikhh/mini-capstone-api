class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    order = current_user.orders
    render json: order, include: "carted_products.product"
  end

  def create
    order = Order.new(
      user_id: current_user.id,
    )
    if order.save
      cartedproduct = current_user.carted_products.where(status: "carted")
      cartedproduct.update_all(order_id: order.id, status: "purchased")
      order.update_totals
      render json: order, include: "carted_products.product"
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    render json: order, include: "carted_products.product"
  end
end
