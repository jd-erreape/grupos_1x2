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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121014114845) do

  create_table "bets", :force => true do |t|
    t.integer  "match_id"
    t.integer  "selection"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "bets", ["match_id"], :name => "index_bets_on_match_id"
  add_index "bets", ["user_id"], :name => "index_bets_on_user_id"

  create_table "match_teams", :force => true do |t|
    t.integer  "match_id"
    t.integer  "team_id"
    t.boolean  "is_local"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "match_teams", ["match_id"], :name => "index_match_teams_on_match_id"
  add_index "match_teams", ["team_id"], :name => "index_match_teams_on_team_id"

  create_table "matches", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "position"
    t.integer  "round_id"
  end

  add_index "matches", ["round_id"], :name => "index_matches_on_round_id"

  create_table "rounds", :force => true do |t|
    t.integer  "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",              :default => "", :null => false
    t.string   "encrypted_password", :default => "", :null => false
    t.integer  "sign_in_count",      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
