class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 5..500 }

  #def supplier
  # Supplierinfo.find_by(id: supplierinfo)
  #end
  belongs_to :supplierinfo
  has_many :images

  def discount
    if price.to_i < 55000
      answer = "Special Offer"
    else
      answer = "Not included in special offer"
    end
    answer
  end

  def tax
    price.to_i * 0.09
  end

  def total
    price.to_i + tax
  end
end
