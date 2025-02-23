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

ActiveRecord::Schema.define(version: 20220125213639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notes", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "note_date"
    t.string   "link_title"
    t.string   "note_preview"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "notes", ["player_id"], name: "index_notes_on_player_id", using: :btree

  create_table "player_notes", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "note_date"
    t.string   "link_title"
    t.string   "note_preview"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "player_api_id"
  end

  add_index "player_notes", ["player_id"], name: "index_player_notes_on_player_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "player_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "player_api_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "player_id"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "trans_type"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "notification_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "password_digest"
  end

  add_foreign_key "notes", "players"
end
