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

ActiveRecord::Schema.define(version: 20141003163110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chartboost_instances", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid",                null: false
    t.string   "campaign_id"
    t.string   "campaign"
    t.string   "macid"
    t.string   "ifa"
    t.string   "user_id"
    t.string   "platform"
    t.string   "to_app_name"
    t.string   "to_app_id"
    t.string   "to_company_name"
    t.string   "from_app_name"
    t.string   "from_app_id"
    t.string   "from_company_name"
    t.string   "event_type"
    t.string   "gaid"
    t.string   "formatted_ifa"
    t.string   "device_country_code"
    t.string   "device_model"
    t.string   "device_os"
    t.string   "device_language"
    t.string   "device_type"
    t.string   "to_store_id"
    t.string   "from_store_id"
    t.string   "to_bundle_id"
    t.string   "side_of_event"
    t.string   "currency_name"
    t.string   "award_amount"
    t.string   "campaign_type"
    t.string   "from_bundle_id"
    t.string   "target_name"
    t.string   "bid_type"
  end

  add_index "chartboost_instances", ["uuid"], name: "index_chartboost_instances_on_uuid", unique: true, using: :btree

end
