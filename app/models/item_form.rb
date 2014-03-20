class ItemForm

  def initialize(item_hash)
    item_hash[:cart_id] = item_hash.delete(:cart) if item_hash[:cart]
    item_hash[:product_id] = item_hash.delete(:product) if item_hash[:product]
    item_hash[:current_price] = item_hash.delete(:currentPrice) if item_hash[:currentPrice]
    @item_hash = item_hash
  end

  def item
    Item.new(attributes)
  end

  def attributes
    @item_hash.permit(:quantity, :product_id, :cart_id, :current_price)
  end
end

