json.array! @products do |product|
  json.id product.id
  json.name product.name
  json.category do
    json.partial! 'api/v1/products/categories/category', category: product.category
  end
  json.created_at product.created_at
end