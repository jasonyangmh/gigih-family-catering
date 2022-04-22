# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_22_151255) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_categories", force: :cascade do |t|
    t.integer "Food_id", null: false
    t.integer "Category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Category_id"], name: "index_food_categories_on_Category_id"
    t.index ["Food_id"], name: "index_food_categories_on_Food_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "Order_id", null: false
    t.integer "Food_id", null: false
    t.integer "quantity"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Food_id"], name: "index_order_details_on_Food_id"
    t.index ["Order_id"], name: "index_order_details_on_Order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.float "total_price"
    t.integer "Customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Customer_id"], name: "index_orders_on_Customer_id"
  end

  add_foreign_key "food_categories", "Categories"
  add_foreign_key "food_categories", "Foods"
  add_foreign_key "order_details", "Foods"
  add_foreign_key "order_details", "Orders"
  add_foreign_key "orders", "Customers"
end
