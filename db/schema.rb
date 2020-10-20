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

ActiveRecord::Schema.define(version: 2020_10_20_120329) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category_image"
  end

  create_table "category_recipies", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "recipie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_category_recipies_on_category_id"
    t.index ["recipie_id"], name: "index_category_recipies_on_recipie_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "comment_num"
    t.text "comment_text"
    t.integer "step_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["step_id"], name: "index_comments_on_step_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "recipies", force: :cascade do |t|
    t.string "recipie_name"
    t.string "recipie_category"
    t.string "recipie_type"
    t.integer "recipie_time"
    t.integer "recipie_likes"
    t.text "recipie_description"
    t.string "recipie_video_url"
    t.text "recipie_equipments"
    t.text "recipie_skills"
    t.integer "recipie_price"
    t.text "recipie_image_path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "recipie_ingredients"
    t.string "recipie_difficulty"
  end

  create_table "steps", force: :cascade do |t|
    t.text "step_description"
    t.integer "step_num"
    t.text "step_image_path"
    t.string "step_title"
    t.text "step_cautionpoint"
    t.integer "recipie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipie_id"], name: "index_steps_on_recipie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "category_recipies", "categories"
  add_foreign_key "category_recipies", "recipies", column: "recipie_id"
  add_foreign_key "comments", "steps"
  add_foreign_key "comments", "users"
  add_foreign_key "steps", "recipies", column: "recipie_id"
end
