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

ActiveRecord::Schema.define(:version => 20120609064238) do

  create_table "bets", :force => true do |t|
    t.string   "user"
    t.integer  "score1"
    t.integer  "score2"
    t.integer  "match_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "bets", ["match_id"], :name => "index_bets_on_match_id"
  add_index "bets", ["user_id"], :name => "index_bets_on_user_id"

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "matches", :force => true do |t|
    t.integer  "score1"
    t.integer  "score2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "betsend"
    t.datetime "matchtime"
    t.integer  "team1_id"
    t.integer  "team2_id"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
