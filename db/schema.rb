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

ActiveRecord::Schema.define(:version => 20110603125804) do

  create_table "badges", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.string   "partner"
    t.integer  "point"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badges_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "badge_id"
    t.integer  "venue_id"
    t.string   "app_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", :force => true do |t|
    t.integer  "inviter_id"
    t.integer  "status"
    t.integer  "invitee_id"
    t.string   "app_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends_address_books", :force => true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "response_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags_venues", :force => true do |t|
    t.integer  "venue_id"
    t.string   "value"
    t.integer  "user_id"
    t.string   "app_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tips_venues", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "user_id"
    t.text     "description"
    t.string   "app_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tokens", :force => true do |t|
    t.string   "oauth_token"
    t.integer  "status",      :default => 0
    t.string   "app_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
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

  create_table "venues", :force => true do |t|
    t.text     "name"
    t.string   "latitude"
    t.string   "longtitude"
    t.text     "street"
    t.text     "city"
    t.text     "state"
    t.integer  "postal_code"
    t.integer  "category_id"
    t.integer  "user_id"
    t.string   "country"
    t.string   "source_id"
    t.string   "source"
    t.string   "app_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
