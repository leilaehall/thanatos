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

ActiveRecord::Schema.define(version: 2019_05_30_132701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.string "logo"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "company_email"
    t.string "description"
  end

  create_table "company_preferences", force: :cascade do |t|
    t.bigint "funeral_preference_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_preferences_on_company_id"
    t.index ["funeral_preference_id"], name: "index_company_preferences_on_funeral_preference_id"
  end

  create_table "delegates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "relationship"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_delegates_on_user_id"
  end

  create_table "funeral_preferences", force: :cascade do |t|
    t.string "category"
    t.string "address"
    t.string "guest_list"
    t.string "music"
    t.string "car"
    t.string "details"
    t.string "dress"
    t.string "hairstyle"
    t.boolean "embalming"
    t.string "make_up"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "speaker"
    t.string "reading"
    t.string "charity"
    t.index ["user_id"], name: "index_funeral_preferences_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "recipient"
    t.string "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "category"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_templates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "religion"
    t.string "address"
    t.string "scenario"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "company_preferences", "companies"
  add_foreign_key "company_preferences", "funeral_preferences"
  add_foreign_key "delegates", "users"
  add_foreign_key "funeral_preferences", "users"
  add_foreign_key "messages", "users"
  add_foreign_key "templates", "users"
end
