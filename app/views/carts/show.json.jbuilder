json.cart do 
  json.id @cart.id
  json.items @cart.items.map do |item|
    item.id
  end
end