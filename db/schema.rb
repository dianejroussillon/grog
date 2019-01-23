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

ActiveRecord::Schema.define(version: 2019_01_23_092306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone_number"
    t.string "address"
    t.integer "code_postal"
    t.string "city"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "ingredient_1"
    t.string "ingredient_2"
    t.string "ingredient_3"
    t.string "ingredient_4"
    t.integer "quantity_1"
    t.integer "quantity_2"
    t.integer "quantity_3"
    t.integer "quantity_4"
    t.integer "content_1"
    t.integer "content_2"
    t.integer "content_3"
    t.integer "content_4"
    t.text "description_1"
    t.text "description_2"
    t.text "description_3"
    t.text "description_4"
    t.integer "quantity_asked"
    t.text "sub_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.integer "quantity"
  end

  add_foreign_key "orders", "products"
end
