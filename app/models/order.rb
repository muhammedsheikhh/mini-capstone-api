class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def update_totals
    calculated_subtotal = 0
    calculated_tax = 0
    carted_products.each do |cartedproduct|
      calculated_subtotal += cartedproduct.quantity * cartedproduct.product.price
      calculated_tax += cartedproduct.quantity * cartedproduct.product.tax
    end
    calculated_total = calculated_subtotal + calculated_tax

    self.subtotal = calculated_subtotal
    self.tax = calculated_tax
    self.total = calculated_total
    self.save
  end
end
