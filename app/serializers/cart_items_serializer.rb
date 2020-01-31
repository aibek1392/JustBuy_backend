class CartItemsSerializer 
  include FastJsonapi::ObjectSerializer
  attributes  :item, :user, :cart_quantity
  has_one :item
end
