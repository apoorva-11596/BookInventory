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

ActiveRecord::Schema.define(version: 20170413055328) do

  create_table "book_invs", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "inventory_id"
    t.integer  "copies"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "publisher"
    t.integer  "edition"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "price"
    t.string   "author_name"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "num_of_copies"
    t.integer  "price"
    t.integer  "store_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "store_name",             default: "", null: false
    t.string   "manager_name",           default: ""
    t.string   "address",                default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "stores", ["reset_password_token"], name: "index_stores_on_reset_password_token", unique: true

end
