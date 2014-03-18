json.product do
  json.extract! @product, :id, :name, :description, :avatar, :price
end