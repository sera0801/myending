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

ActiveRecord::Schema.define(version: 20160511053631) do

  create_table "forms", force: :cascade do |t|
    t.integer  "q1",             limit: 4
    t.text     "q1_d",           limit: 65535
    t.integer  "q2",             limit: 4
    t.text     "q2_d",           limit: 65535
    t.integer  "q3",             limit: 4
    t.text     "q3_d",           limit: 65535
    t.integer  "q4",             limit: 4
    t.text     "q4_d",           limit: 65535
    t.integer  "q5",             limit: 4
    t.text     "q5_d",           limit: 65535
    t.string   "moshu_name",     limit: 255
    t.string   "moshu_kana",     limit: 255
    t.integer  "moshu_number",   limit: 4
    t.string   "aisatsu_name",   limit: 255
    t.string   "aisatsu_kana",   limit: 255
    t.integer  "aisatsu_number", limit: 4
    t.integer  "q8",             limit: 4
    t.text     "q8_d",           limit: 65535
    t.integer  "q9",             limit: 4
    t.text     "q9_d",           limit: 65535
    t.integer  "q10",            limit: 4
    t.text     "q10_d",          limit: 65535
    t.integer  "q11",            limit: 4
    t.text     "q11_d",          limit: 65535
    t.integer  "q12",            limit: 4
    t.text     "q12_d",          limit: 65535
    t.integer  "q13",            limit: 4
    t.text     "q13_d",          limit: 65535
    t.text     "q14_d",          limit: 65535
    t.integer  "q15",            limit: 4
    t.text     "q15_d",          limit: 65535
    t.integer  "q16",            limit: 4
    t.text     "q16_d",          limit: 65535
    t.integer  "q17",            limit: 4
    t.text     "q17_d",          limit: 65535
    t.integer  "q18",            limit: 4
    t.text     "q18_d",          limit: 65535
    t.integer  "q19",            limit: 4
    t.text     "q19_d",          limit: 65535
    t.integer  "q20",            limit: 4
    t.text     "q20_d",          limit: 65535
    t.integer  "user_id",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "q21",            limit: 4
    t.text     "q21_d",          limit: 65535
    t.integer  "q22",            limit: 4
    t.text     "q22_d",          limit: 65535
    t.text     "requests",       limit: 65535
  end

  create_table "messageposts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "dear",       limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "user_id",               limit: 4
    t.string   "title",                 limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "portrait_file_name",    limit: 255
    t.string   "portrait_content_type", limit: 255
    t.integer  "portrait_file_size",    limit: 4
    t.datetime "portrait_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "kana",                   limit: 255
    t.integer  "b_year",                 limit: 4
    t.integer  "b_month",                limit: 4
    t.integer  "b_day",                  limit: 4
    t.integer  "sex",                    limit: 4
    t.integer  "postalcode1",            limit: 4
    t.integer  "postalcode2",            limit: 4
    t.string   "address",                limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
