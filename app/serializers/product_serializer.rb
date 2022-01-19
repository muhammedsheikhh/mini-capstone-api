class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :discount, :description, :tax, :total, :supplierinfo, :images
end
