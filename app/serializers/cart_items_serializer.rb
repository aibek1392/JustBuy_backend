class CartItemsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :item, :user, :cart_quantity
  # has_one :item
end
