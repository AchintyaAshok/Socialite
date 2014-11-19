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

ActiveRecord::Schema.define(version: 20141119031735) do

  create_table "events", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name", null: false
    t.text     "description"
    t.string   "venue"
    t.datetime "starts"
    t.datetime "ends"
  end

<<<<<<< HEAD
  create_table "businesses", force: true do |t| #Business table
  	t.string "business_name", null: false
  	t.string "business_location", null: false
  	t.string "business_email", null: false
  	t.string "business_username", null: false
  	t.datetime "hours_open", null: false
  	t.datetime "hours_closed", null: false
  end

  create table "business_events", force: true do |t| #Business and events table.
  	t.string "business_event_name", null: false
  	t.string "location"
  	t.text "description"
  	t.datetime "starts", null: false
  	t.datetime "ends", null: false
  end

  

=======
  create_table "user_events", force: true do |t|
    t.integer  "users_id"
    t.integer  "events_id"
    t.boolean  "following",  default: true,  null: false
    t.boolean  "going",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.string   "username",   null: false
    t.string   "email",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], name: "index_users_on_username"

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "yelp_Id"
    t.string   "ll"
    t.string   "address"
    t.string   "phone"
    t.integer  "review_count"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
>>>>>>> be_master

end
