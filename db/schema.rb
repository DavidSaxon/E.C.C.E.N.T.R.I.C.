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

ActiveRecord::Schema.define(version: 20130826055443) do

  create_table "map_items", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "map_points", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "roletitle"
    t.integer  "user_id"
    t.integer  "simulation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["simulation_id"], name: "index_players_on_simulation_id"
  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "simulations", force: true do |t|
    t.integer  "simuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "userid"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
