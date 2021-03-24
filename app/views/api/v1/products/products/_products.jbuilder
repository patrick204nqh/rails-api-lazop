json.array! products do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.is_new product.is_new
  json.is_deal product.is_deal
  json.is_bestseller product.is_bestseller
  json.category_id product.category_id
  json.created_at product.created_at
end