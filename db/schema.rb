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

ActiveRecord::Schema.define(version: 2021_02_16_123615) do

  create_table "cal_month_sales", force: :cascade do |t|
    t.date "calendar_month_desc"
    t.integer "dollars"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cal_times", force: :cascade do |t|
    t.date "datefull"
    t.integer "day_number_in_week"
    t.integer "day_number_in_month"
    t.integer "calendar_week_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["datefull"], name: "index_cal_times_on_datefull", unique: true
  end

  create_table "channels", force: :cascade do |t|
    t.string "desc"
    t.string "classs"
    t.string "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "costs", force: :cascade do |t|
    t.float "unit_cost"
    t.float "unit_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id"
    t.integer "cal_time_id"
    t.integer "channel_id"
    t.index ["cal_time_id"], name: "index_costs_on_cal_time_id"
    t.index ["channel_id"], name: "index_costs_on_channel_id"
    t.index ["product_id"], name: "index_costs_on_product_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "man_prods", force: :cascade do |t|
    t.integer "manufacturer_id"
    t.integer "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manufacturer_id"], name: "index_man_prods_on_manufacturer_id"
    t.index ["product_id"], name: "index_man_prods_on_product_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.integer "num_employees"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "microposts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "product_id"
    t.index ["product_id"], name: "index_microposts_on_product_id"
    t.index ["user_id"], name: "index_microposts_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "device_name"
    t.string "device_platform"
    t.integer "min_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string "promo_name"
    t.integer "promo_cost"
    t.date "begin_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "amount_sold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id"
    t.integer "user_id"
    t.integer "cal_time_id"
    t.integer "channel_id"
    t.integer "promotion_id"
    t.index ["cal_time_id"], name: "index_sales_on_cal_time_id"
    t.index ["channel_id"], name: "index_sales_on_channel_id"
    t.index ["product_id"], name: "index_sales_on_product_id"
    t.index ["promotion_id"], name: "index_sales_on_promotion_id"
    t.index ["user_id"], name: "index_sales_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "costs", "cal_times"
  add_foreign_key "costs", "channels"
  add_foreign_key "costs", "products"
  add_foreign_key "man_prods", "manufacturers"
  add_foreign_key "man_prods", "products"
  add_foreign_key "microposts", "products"
  add_foreign_key "microposts", "users"
  add_foreign_key "sales", "cal_times"
  add_foreign_key "sales", "channels"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "promotions"
  add_foreign_key "sales", "users"
  add_foreign_key "users", "countries"
end
