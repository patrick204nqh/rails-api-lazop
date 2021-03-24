# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20210324030807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.boolean "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.boolean "archived", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.boolean "archived"
    t.string "short_description"
    t.text "long_description"
    t.string "sku"
    t.string "name"
    t.text "note"
    t.boolean "is_new"
    t.boolean "is_bestseller"
    t.boolean "is_deal"
    t.datetime "deal_from_date"
    t.datetime "deal_to_date"
    t.boolean "is_stock_inventory"
    t.text "meta_keywords"
    t.text "meta_description"
    t.boolean "is_sold_out"
    t.string "barcode"
    t.decimal "cost"
    t.decimal "price"
    t.decimal "deal_price"
    t.integer "deal_percent"
    t.boolean "is_business_choices"
    t.boolean "is_top_business_choices"
    t.boolean "can_be_sold"
    t.boolean "can_be_purchased"
    t.decimal "stock_min"
    t.decimal "stock_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

end
