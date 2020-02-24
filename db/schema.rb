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

ActiveRecord::Schema.define(version: 2020_02_24_162426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "afterwork"
    t.boolean "diner_time"
    t.string "days"
    t.index ["user_id"], name: "index_availabilities_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.bigint "user1_id", null: false
    t.bigint "user2_id", null: false
    t.bigint "place_id", null: false
    t.string "date_time"
    t.integer "cancelation_author"
    t.integer "was_here"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_meetings_on_place_id"
    t.index ["user1_id"], name: "index_meetings_on_user1_id"
    t.index ["user2_id"], name: "index_meetings_on_user2_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "opening_time"
    t.string "photo"
    t.string "category"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
    t.integer "age"
    t.integer "height"
    t.boolean "smoker"
    t.boolean "drinker"
    t.string "sex"
    t.string "sexual_orientation"
    t.string "photo"
    t.string "sport"
    t.string "job"
    t.string "intention"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "availabilities", "users"
  add_foreign_key "meetings", "places"
  add_foreign_key "meetings", "users", column: "user1_id"
  add_foreign_key "meetings", "users", column: "user2_id"
end
