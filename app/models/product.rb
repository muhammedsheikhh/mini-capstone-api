class Product < ApplicationRecord
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
