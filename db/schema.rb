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

ActiveRecord::Schema.define(version: 2022_07_15_060938) do

  create_table "barangays", charset: "utf8mb4", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.bigint "city_municipality_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_municipality_id"], name: "index_barangays_on_city_municipality_id"
  end

  create_table "city_municipalities", charset: "utf8mb4", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.boolean "is_capital"
    t.boolean "is_city"
    t.boolean "is_municipality"
    t.bigint "district_id"
    t.bigint "province_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["district_id"], name: "index_city_municipalities_on_district_id"
    t.index ["province_id"], name: "index_city_municipalities_on_province_id"
  end

  create_table "districts", charset: "utf8mb4", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_districts_on_region_id"
  end

  create_table "provinces", charset: "utf8mb4", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_provinces_on_region_id"
  end

  create_table "regions", charset: "utf8mb4", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "region_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "urls", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.string "long_url"
    t.string "short_url"
    t.integer "clicked", default: 0
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.index ["user_id"], name: "index_urls_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
