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
    t.string   "uuid",                default: "", null: false
    t.string   "campaign_id",         default: "", null: false
    t.string   "campaign",            default: "", null: false
    t.string   "macid"
    t.string   "ifa"
    t.string   "user_id",             default: "", null: false
    t.string   "platform",            default: "", null: false
    t.string   "to_app_name",         default: "", null: false
    t.string   "to_app_id",           default: "", null: false
    t.string   "to_company_name",     default: "", null: false
    t.string   "from_app_name",       default: "", null: false
    t.string   "from_app_id",         default: "", null: false
    t.string   "from_company_name",   default: "", null: false
    t.string   "event_type",          default: "", null: false
    t.string   "gaid"
    t.string   "formatted_ifa"
    t.string   "device_country_code"
    t.string   "device_model"
    t.string   "device_os"
    t.string   "device_language"
    t.string   "device_type"
    t.string   "to_store_id"
    t.string   "from_store_id"
    t.string   "to_bundle_id",        default: "", null: false
    t.string   "side_of_event",       default: "", null: false
    t.string   "currency_name",       default: "", null: false
    t.string   "award_amount",        default: "", null: false
    t.string   "campaign_type",       default: "", null: false
    t.string   "from_bundle_id",      default: "", null: false
    t.string   "target_name",         default: "", null: false
    t.string   "bid_type",            default: "", null: false
  end

  add_index "chartboost_instances", ["uuid"], name: "index_chartboost_instances_on_uuid", unique: true, using: :btree

end
