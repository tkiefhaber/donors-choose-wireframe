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

ActiveRecord::Schema.define(:version => 20120718203349) do

  create_table "challenge_creation_events", :force => true do |t|
    t.integer  "challenge_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "challenge_evidences", :force => true do |t|
    t.integer  "challenge_id"
    t.string   "image"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "external_url"
    t.string   "display_html"
  end

  create_table "challenge_met_events", :force => true do |t|
    t.integer  "challenge_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "challenges", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "amount"
    t.integer  "project_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "display_media"
    t.boolean  "met",           :default => false
  end

  create_table "events", :force => true do |t|
    t.integer  "project_id"
    t.text     "content"
    t.string   "event_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "name"
    t.string   "body"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "media_type"
    t.string   "url"
    t.string   "video_html"
  end

  create_table "projects", :force => true do |t|
    t.string   "proposal_url"
    t.string   "fund_url"
    t.string   "image_url"
    t.string   "title"
    t.text     "short_description"
    t.text     "fulfillment_trailer"
    t.string   "percent_funded"
    t.string   "cost_to_complete"
    t.string   "total_price"
    t.string   "free_shipping"
    t.string   "teacher_name"
    t.string   "grade_level"
    t.string   "poverty_level"
    t.string   "school_name"
    t.string   "city"
    t.string   "zip"
    t.string   "state_abbr"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "state"
    t.string   "subject"
    t.string   "resource_type"
    t.string   "expiration_date"
    t.string   "funding_status"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "donors_choose_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
