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

ActiveRecord::Schema.define(version: 20161105062345) do

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.string   "image"
    t.integer  "user_id"
    t.integer  "eatery_id"
    t.integer  "promotion_id"
    t.integer  "ricetudy_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "comments", ["eatery_id"], name: "index_comments_on_eatery_id"
  add_index "comments", ["promotion_id"], name: "index_comments_on_promotion_id"
  add_index "comments", ["ricetudy_id"], name: "index_comments_on_ricetudy_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "eateries", force: :cascade do |t|
    t.string   "name"
    t.string   "callnumber"
    t.string   "style"
    t.string   "openhour"
    t.string   "image"
    t.string   "menu"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "eateries", ["user_id"], name: "index_eateries_on_user_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "eatery_id"
    t.integer  "promotion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "image"
    t.string   "restaurant"
    t.integer  "eatery_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "promotions", ["user_id"], name: "index_promotions_on_user_id"

  create_table "ricetudies", force: :cascade do |t|
    t.string   "title"
    t.string   "eatery"
    t.datetime "start"
    t.datetime "end_at"
    t.string   "content"
    t.string   "contact"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "ricetudies", ["user_id"], name: "index_ricetudies_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
