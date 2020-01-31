class ItemSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :name, :img_url, :category, :price, :description, :quantity, :information
end
