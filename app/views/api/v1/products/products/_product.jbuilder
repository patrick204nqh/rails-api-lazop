json.id product.id
json.name product.name
json.price product.price
json.is_new product.is_new
json.is_deal product.is_deal
json.is_bestseller product.is_bestseller
json.category do
  json.partial! 'api/v1/products/categories/category', category: product.category
end
json.created_at product.created_at