json.id @category.id
json.name @category.name
json.id @category.id
json.products do
  json.partial! 'api/v1/products/products/products', products: @category.products
end