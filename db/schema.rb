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

ActiveRecord::Schema.define(version: 20140929173801) do

  create_table "accounts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "booking_histories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookings", force: true do |t|
    t.integer  "carrier_id"
    t.integer  "load_id"
    t.datetime "booking_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carriers", force: true do |t|
    t.string   "name"
    t.integer  "mc_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dot_no"
    t.integer  "user_id"
    t.integer  "account_id"
    t.integer  "phone_number"
  end

  add_index "carriers", ["account_id"], name: "index_carriers_on_account_id"
  add_index "carriers", ["dot_no"], name: "index_carriers_on_dot_no"
  add_index "carriers", ["mc_no"], name: "index_carriers_on_mc_no"
  add_index "carriers", ["name"], name: "index_carriers_on_name"
  add_index "carriers", ["user_id"], name: "index_carriers_on_user_id"

  create_table "loads", force: true do |t|
    t.string   "origin"
    t.string   "destination"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "carrier_id"
    t.decimal  "pay_truck",     precision: 8, scale: 2
    t.decimal  "bill_customer", precision: 8, scale: 2
    t.date     "pick_date"
    t.time     "pick_time"
    t.date     "drop_date"
    t.time     "drop_time"
    t.integer  "picks",                                 default: 1
    t.integer  "drops",                                 default: 1
    t.integer  "account_id"
  end

  add_index "loads", ["account_id"], name: "index_loads_on_account_id"
  add_index "loads", ["carrier_id"], name: "index_loads_on_carrier_id"
  add_index "loads", ["user_id"], name: "index_loads_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
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
    t.integer  "account_id"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
