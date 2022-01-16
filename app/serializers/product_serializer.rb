class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :discount, :description, :tax, :total
end
