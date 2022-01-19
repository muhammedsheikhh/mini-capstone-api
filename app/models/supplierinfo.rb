class Supplierinfo < ApplicationRecord
  #def supplier
  # Supplierinfo.where(supplierinfo: id)
  #end
  has_many :products
end
