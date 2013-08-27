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

ActiveRecord::Schema.define(version: 20130827114710) do

  create_table "displays", force: true do |t|
    t.string   "name"
    t.integer  "group"
    t.string   "pathname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "roletitle",     default: "", null: false
    t.integer  "user_id",       default: 0,  null: false
    t.integer  "simulation_id", default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["simulation_id"], name: "index_players_on_simulation_id"
  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "policies", force: true do |t|
    t.integer  "player_id",  default: 0, null: false
    t.integer  "setting_id", default: 0, null: false
    t.integer  "value",      default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "policies", ["player_id"], name: "index_policies_on_player_id"
  add_index "policies", ["setting_id"], name: "index_policies_on_setting_id"

  create_table "settings", force: true do |t|
    t.string   "title",       default: "", null: false
    t.text     "description", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simulations", force: true do |t|
    t.string   "name",       default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
