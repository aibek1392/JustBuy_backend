class Item < ApplicationRecord
  has_many :users
  
  # has_many :cart_items
  # # validates_uniqueness_of :username, :case_sensitive => false
  # has_many :users, through: :cart_items

end
