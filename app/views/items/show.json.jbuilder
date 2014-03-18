json.item do 
  json.extract! @item, :id, :quantity

  json.customerPrice @item.current_price
  json.product @item.product_id
  json.cart @item.cart_id
end

