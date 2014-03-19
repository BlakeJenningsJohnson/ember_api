class Cart < ActiveRecord::Base
  has_one  :order
  has_many :items
  has_many :products, through: :items
end
