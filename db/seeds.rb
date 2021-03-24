require 'faker'

Product.all.destroy_all
ProductCategory.all.destroy_all

5.times do |t|
  ProductCategory.create(
    name: Faker::Food.ingredient
  )
end

category_first = ProductCategory.first.id
category_last = ProductCategory.last.id

30.times do |t|
  Product.create(
    sku: Faker::Code.asin,
    name: Faker::Food.dish,
    short_description: Faker::Lorem.sentence,
    long_description: Faker::Lorem.sentence(word_count: 50, supplemental: true, random_words_to_add: 4),
    is_new: Faker::Boolean.boolean,
    is_deal: Faker::Boolean.boolean,
    is_bestseller: Faker::Boolean.boolean,
    is_business_choices: Faker::Boolean.boolean,
    is_sold_out: Faker::Boolean.boolean,
    price: Faker::Number.between(from: 50, to: 100),
    deal_price: Faker::Number.between(from: 1, to: 10),
    deal_percent: Faker::Number.between(from: 1.0, to: 10.0),
    category_id: Faker::Number.between(from: category_first, to: category_last)
  )
end
