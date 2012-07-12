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

ActiveRecord::Schema.define(:version => 20120712172358) do

  create_table "challenges", :force => true do |t|
    t.string   "name_of_challenger"
    t.string   "title_of_challenge"
    t.integer  "minimum_amount"
    t.integer  "maximum_amount"
    t.integer  "project_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
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
    t.integer  "challenge_id"
  end

end
