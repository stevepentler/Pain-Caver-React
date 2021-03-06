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

ActiveRecord::Schema.define(version: 20160309203233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "races", force: :cascade do |t|
    t.string   "title"
    t.string   "title_id"
    t.float    "elevation_gain"
    t.float    "max_elevation"
    t.float    "distance"
    t.string   "description"
    t.string   "website"
    t.string   "course_record"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "running_tips", force: :cascade do |t|
    t.string   "tip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_races", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "date"
    t.string   "title"
    t.float    "distance"
    t.string   "target_time"
    t.string   "location"
    t.string   "start_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_races", ["user_id"], name: "index_user_races_on_user_id", using: :btree

  create_table "user_statistics", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "ytd_mileage"
    t.integer  "ytd_sessions"
    t.string   "ytd_duration"
    t.integer  "ytd_elevation"
    t.float    "recent_mileage"
    t.integer  "recent_sessions"
    t.string   "recent_duration"
    t.integer  "recent_elevation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "user_statistics", ["user_id"], name: "index_user_statistics_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "token"
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "profile_picture"
    t.string   "city"
    t.string   "state"
    t.string   "sex"
    t.integer  "athlete_type",    default: 0
    t.float    "weight"
    t.string   "shoes"
    t.string   "follower_count"
    t.string   "friend_count"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "user_races", "users"
  add_foreign_key "user_statistics", "users"
end
