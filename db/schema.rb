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

ActiveRecord::Schema.define(version: 2020_02_28_120948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "afterwork"
    t.boolean "diner_time"
    t.string "days"
    t.index ["user_id"], name: "index_availabilities_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "meeting_id", null: false
    t.boolean "was_present"
    t.boolean "continue"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meeting_id"], name: "index_feedbacks_on_meeting_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "lapins", force: :cascade do |t|
    t.bigint "meeting_id", null: false
    t.bigint "user_id", null: false
    t.datetime "lapin_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meeting_id"], name: "index_lapins_on_meeting_id"
    t.index ["user_id"], name: "index_lapins_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "liked_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["liked_user_id"], name: "index_likes_on_liked_user_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.bigint "user1_id", null: false
    t.bigint "user2_id", null: false
    t.bigint "place_id", null: false
    t.integer "cancelation_author"
    t.integer "was_here"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status", default: "occured"
    t.datetime "start_time"
    t.datetime "start_hour"
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

  create_table "unlikes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "unliked_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unliked_user_id"], name: "index_unlikes_on_unliked_user_id"
    t.index ["user_id"], name: "index_unlikes_on_user_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "availabilities", "users"
  add_foreign_key "feedbacks", "meetings"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "lapins", "meetings"
  add_foreign_key "lapins", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "likes", "users", column: "liked_user_id"
  add_foreign_key "meetings", "places"
  add_foreign_key "meetings", "users", column: "user1_id"
  add_foreign_key "meetings", "users", column: "user2_id"
  add_foreign_key "unlikes", "users"
  add_foreign_key "unlikes", "users", column: "unliked_user_id"
end
