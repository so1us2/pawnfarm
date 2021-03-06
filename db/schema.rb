# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100722064816) do

  create_table "executions", :force => true do |t|
    t.integer  "scheme_id"
    t.integer  "pawn_id"
    t.string   "state"
    t.string   "candidate_a"
    t.string   "candidate_b"
    t.string   "winner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "tweeted_at"
  end

  create_table "pawns", :force => true do |t|
    t.integer  "user_id",          :null => false
    t.string   "name",             :null => false
    t.string   "description"
    t.string   "twitter_username", :null => false
    t.string   "twitter_password", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
  end

  create_table "pawns_schemes", :id => false, :force => true do |t|
    t.integer "pawn_id",   :null => false
    t.integer "scheme_id", :null => false
  end

  create_table "schemes", :force => true do |t|
    t.integer  "user_id"
    t.string   "title",                                    :null => false
    t.string   "description"
    t.string   "type"
    t.boolean  "random_interval"
    t.integer  "frequency",                 :default => 1, :null => false
    t.string   "tweet_prompt"
    t.string   "tweet_prompt_relationship"
    t.string   "prompt"
    t.string   "target_account"
    t.string   "target_relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turk_forms", :force => true do |t|
    t.string   "url"
    t.integer  "execution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
    t.string   "form_type"
    t.string   "hit_id"
  end

  create_table "twitter_accounts", :force => true do |t|
    t.string   "friends"
    t.string   "followers"
    t.integer  "friend_count"
    t.integer  "follower_count"
    t.datetime "last_tweeted"
    t.string   "status"
    t.integer  "pawn_id"
    t.string   "username"
    t.string   "password"
    t.string   "access_key"
    t.string   "access_secret"
    t.string   "request_token"
    t.string   "request_secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                              :null => false
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
