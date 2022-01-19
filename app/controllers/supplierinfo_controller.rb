class SupplierinfoController < ApplicationController
  def index
    supplier = Supplierinfo.all.order(:id)
    render json: supplier
  end

  def create
    supplier = Supplierinfo.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    supplier = Supplierinfo.find_by(id: params[:id])
    render json: supplier
  end

  def update
    supplier = Supplierinfo.find_by(id: params[:id])
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    supplier = Supplierinfo.find_by(id: params[:id])
    supplier.destroy
    render json: { messege: "supplier sucessfully deleted" }
  end
end
