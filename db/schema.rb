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

ActiveRecord::Schema.define(version: 20130829114509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barangay_geographicals", force: true do |t|
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.date     "date_info_gathered"
    t.decimal  "land_area"
    t.decimal  "agricultural_area"
    t.string   "terrain"
    t.string   "ecosystem"
    t.decimal  "distance_from_town_proper"
    t.decimal  "means_of_transportation"
    t.integer  "barangay_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangays", force: true do |t|
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.integer  "municipality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipalities", force: true do |t|
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.integer  "province_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", force: true do |t|
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "region_id"
  end

  create_table "regions", force: true do |t|
    t.string   "region_tag"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
