# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_13_221844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apart_amenities", force: :cascade do |t|
    t.bigint "property_id"
    t.integer "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_apart_amenities_on_property_id"
  end

  create_table "build_amenities", force: :cascade do |t|
    t.bigint "property_id"
    t.integer "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_build_amenities_on_property_id"
  end

  create_table "close_bies", force: :cascade do |t|
    t.bigint "property_id"
    t.integer "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_close_bies_on_property_id"
  end

  create_table "contacted_properties", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "property_id"
    t.integer "contacted", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_contacted_properties_on_property_id"
    t.index ["user_id"], name: "index_contacted_properties_on_user_id"
  end

  create_table "favorited_properties", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "property_id"
    t.integer "favorited", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_favorited_properties_on_property_id"
    t.index ["user_id"], name: "index_favorited_properties_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "address"
    t.integer "price"
    t.integer "security_deposit"
    t.integer "operation_mode"
    t.integer "maintenance"
    t.integer "area"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
    t.integer "bedrooms"
    t.float "bathrooms"
    t.integer "type"
    t.boolean "closed"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "seen_properties", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "property_id"
    t.integer "seen", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_seen_properties_on_property_id"
    t.index ["user_id"], name: "index_seen_properties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "phone_number"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "properties", "users"
end
