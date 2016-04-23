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

ActiveRecord::Schema.define(version: 20160422044711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.string   "name"
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "bars", ["reviewable_type", "reviewable_id"], name: "index_bars_on_reviewable_type_and_reviewable_id", using: :btree

  create_table "drinks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "bar_id"
    t.integer  "reviewable_id"
    t.string   "reviewable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "drinks", ["reviewable_type", "reviewable_id"], name: "index_drinks_on_reviewable_type_and_reviewable_id", using: :btree

  create_table "families", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "description"
    t.integer  "reviewable_id"
    t.string   "imageable_type"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_tag_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tags", ["parent_tag_id"], name: "index_tags_on_parent_tag_id", using: :btree

  create_table "tagsdrinks", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "drink_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tagsdrinks", ["drink_id"], name: "index_tagsdrinks_on_drink_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "tagsdrinks", "drinks"
end