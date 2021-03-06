# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150505182934) do

  create_table "entries", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "public",     default: false
    t.string   "image"
  end

  add_index "entries", ["public"], name: "index_entries_on_public"
  add_index "entries", ["topic_id"], name: "index_entries_on_topic_id"
  add_index "entries", ["user_id"], name: "index_entries_on_user_id"

  create_table "tag_maps", force: :cascade do |t|
    t.integer  "entry_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tag_maps", ["entry_id"], name: "index_tag_maps_on_entry_id"
  add_index "tag_maps", ["tag_id"], name: "index_tag_maps_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["name"], name: "index_tags_on_name"
  add_index "tags", ["user_id"], name: "index_tags_on_user_id"

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.text     "prompt"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "category"
    t.datetime "display_date"
  end

  add_index "topics", ["category"], name: "index_topics_on_category"
  add_index "topics", ["display_date"], name: "index_topics_on_display_date"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
