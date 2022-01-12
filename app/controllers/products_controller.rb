class ProductsController < ApplicationController
  def product
    products = Product.all
    render json: products.as_json
  end

  def posh
    product1 = Product.first
    render json: product1.as_json
  end
end
