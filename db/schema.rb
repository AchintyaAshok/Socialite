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

ActiveRecord::Schema.define(version: 20141203205910) do

  create_table "business_events", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "events_id"
    t.integer  "businesses_id"
  end

  create_table "businesses", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       null: false
    t.string   "number",     null: false
    t.string   "email",      null: false
    t.string   "address",    null: false
  end

  create_table "events", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.datetime "starts"
    t.datetime "ends"
    t.integer  "venue_id"
    t.integer  "num_attending"
    t.boolean  "business_created", default: false, null: false
    t.integer  "business_id",      default: 0
    t.integer  "person_id",        default: 0
    t.integer  "privacy",          default: 0,     null: false
  end

  create_table "people", force: true do |t|
    t.string   "first_name",                          null: false
    t.string   "last_name",              default: "", null: false
    t.string   "username",                            null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["email"], name: "index_people_on_email", unique: true
  add_index "people", ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true

  create_table "person_events", force: true do |t|
    t.integer  "people_id"
    t.integer  "events_id"
    t.boolean  "following",  default: true,  null: false
    t.boolean  "going",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "yelp_Id"
    t.float    "lat"
    t.float    "long"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
