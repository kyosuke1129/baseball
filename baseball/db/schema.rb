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

ActiveRecord::Schema.define(version: 20151111024218) do

  create_table "players", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.integer  "team_id",               limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "at_bat",                limit: 255
    t.integer  "number",                limit: 4
    t.string   "hand",                  limit: 255
    t.integer  "at_bats",               limit: 4
    t.integer  "hit",                   limit: 4
    t.integer  "two_base_hit",          limit: 4
    t.integer  "three_base_hit",        limit: 4
    t.integer  "home_run",              limit: 4
    t.integer  "walks",                 limit: 4
    t.integer  "struck_out",            limit: 4
    t.integer  "score",                 limit: 4
    t.integer  "double_play",           limit: 4
    t.integer  "catching_killing",      limit: 4
    t.integer  "defensive_opportunity", limit: 4
    t.integer  "ball_counts",           limit: 4
    t.integer  "steal",                 limit: 4
    t.integer  "stolen_base",           limit: 4
    t.integer  "sacrificefly",          limit: 4
    t.integer  "error",                 limit: 4
    t.integer  "bunt",                  limit: 4
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "hit",                   limit: 4
    t.integer  "two_base_hit",          limit: 4
    t.integer  "three_base_hit",        limit: 4
    t.integer  "home_run",              limit: 4
    t.integer  "walks",                 limit: 4
    t.integer  "steal",                 limit: 4
    t.integer  "stolen_base",           limit: 4
    t.integer  "sacrificefly",          limit: 4
    t.integer  "bunt",                  limit: 4
    t.integer  "struck_out",            limit: 4
    t.integer  "score",                 limit: 4
    t.integer  "catching_killing",      limit: 4
    t.integer  "defensive_opportunity", limit: 4
    t.integer  "ball_count",            limit: 4
    t.integer  "average",               limit: 4
    t.integer  "on_base_percentage",    limit: 4
    t.integer  "sulluging_percentage",  limit: 4
    t.integer  "ops",                   limit: 4
    t.integer  "success_rate",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id",               limit: 4
    t.integer  "double_play",           limit: 4
    t.integer  "error",                 limit: 4
  end

  create_table "teams", force: :cascade do |t|
    t.string   "key",        limit: 255
    t.text     "detail",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
