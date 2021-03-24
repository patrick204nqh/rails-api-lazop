class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.boolean :archived, default: false
      t.string :short_description
      t.text :long_description
      t.string :sku
      t.string :name
      t.text :note
      t.boolean :is_new
      t.boolean :is_bestseller
      t.boolean :is_deal
      t.datetime :deal_from_date
      t.datetime :deal_to_date
      t.boolean :is_stock_inventory
      t.text :meta_keywords
      t.text :meta_description
      t.boolean :is_sold_out
      t.string :barcode
      t.decimal :cost
      t.decimal :price
      t.decimal :deal_price
      t.integer :deal_percent
      t.boolean :is_business_choices
      t.boolean :is_top_business_choices
      t.boolean :can_be_sold
      t.boolean :can_be_purchased
      t.decimal :stock_min
      t.decimal :stock_max

      t.timestamps
    end
  end
end
