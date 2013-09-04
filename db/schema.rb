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

ActiveRecord::Schema.define(version: 20130904155829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agri_based_enterprise_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arc_barangays", force: true do |t|
    t.integer  "arc_id"
    t.integer  "barangay_id"
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.date     "date_confirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arc_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arcs", force: true do |t|
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.date     "date_confirmed"
    t.string   "classification"
    t.boolean  "arc_profiled"
    t.boolean  "dev_plan_available"
    t.boolean  "dev_plan_mainstream"
    t.integer  "alda_rating"
    t.string   "faps_coverage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_bridge_project_completions", force: true do |t|
    t.integer  "barangay_bridge_project_id"
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.integer  "percentage_completion"
    t.date     "date_confirmed"
    t.integer  "user_id"
    t.datetime "datetime_edited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_bridge_projects", force: true do |t|
    t.string   "tag"
    t.integer  "barangay_id"
    t.string   "name_of_bridge_project"
    t.string   "location"
    t.decimal  "project_length"
    t.decimal  "project_length_provided"
    t.date     "date_project_started"
    t.date     "date_project_ended"
    t.date     "date_completed"
    t.string   "project_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bridge_project_typology_id"
  end

  create_table "barangay_fmr_project_completions", force: true do |t|
    t.integer  "barangay_fmr_project_id"
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.integer  "percentage_completion"
    t.date     "date_confirmed"
    t.integer  "user_id"
    t.datetime "datetime_edited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_fmr_projects", force: true do |t|
    t.string   "tag"
    t.integer  "barangay_id"
    t.string   "name_of_fmr_project"
    t.string   "location"
    t.decimal  "project_length"
    t.decimal  "project_length_provided"
    t.date     "date_project_started"
    t.date     "date_project_ended"
    t.date     "date_completed"
    t.string   "project_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fmr_project_typology_id"
  end

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
    t.string   "means_of_transportation"
    t.integer  "barangay_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_lti_statuses", force: true do |t|
    t.integer  "barangay_id"
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.date     "date_confirmed"
    t.decimal  "lad_scope"
    t.decimal  "working_scope"
    t.decimal  "vos"
    t.decimal  "ca"
    t.decimal  "vlt"
    t.decimal  "gol"
    t.string   "remarks"
    t.integer  "lad_male_arb"
    t.integer  "lad_female_arb"
    t.decimal  "leasehold_scope"
    t.decimal  "leasehold_accomplishment"
    t.string   "remarks2"
    t.integer  "lh_male_arb"
    t.integer  "lh_female_arb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_organization_memberships", force: true do |t|
    t.integer  "barangay_organization_id"
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.date     "date_confirmed"
    t.integer  "count_male_arb"
    t.integer  "count_male_non_arb"
    t.integer  "count_female_arb"
    t.integer  "count_female_non_arb"
    t.integer  "count_bod_official_male_arb"
    t.integer  "count_bod_official_male_non_arb"
    t.integer  "count_bod_official_female_arb"
    t.integer  "count_bod_official_female_non_arb"
    t.integer  "count_municipal_level_rep_male_arb"
    t.integer  "count_municipal_level_rep_male_non_arb"
    t.integer  "count_municipal_level_rep_female_arb"
    t.integer  "count_municipal_level_rep_female_non_arb"
    t.integer  "count_provincial_level_rep_male_arb"
    t.integer  "count_provincial_level_rep_male_non_arb"
    t.integer  "count_provincial_level_rep_female_arb"
    t.integer  "count_provincial_level_rep_female_non_arb"
    t.string   "oma_rating"
    t.boolean  "organizational_status"
    t.boolean  "with_sustainability"
    t.string   "type_of_meetings"
    t.string   "frequency"
    t.integer  "capital_buildup"
    t.integer  "capital_count_of_members_contributing"
    t.integer  "savings"
    t.integer  "savings_count_of_members_contributing"
    t.integer  "assets"
    t.integer  "liabilities"
    t.string   "service_provided"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_organizations", force: true do |t|
    t.integer  "barangay_id"
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.string   "location"
    t.string   "name_of_chairman"
    t.integer  "year_organized"
    t.integer  "organization_typology_id"
    t.integer  "registering_agency_id"
    t.integer  "year_registered"
    t.string   "registration_number"
    t.date     "date_confirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_politicals", force: true do |t|
    t.string   "tag"
    t.integer  "barangay_id"
    t.string   "name"
    t.text     "description"
    t.date     "date_info_gathered"
    t.string   "barangay_chairman"
    t.string   "barc_chairman"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_populations", force: true do |t|
    t.string   "tag"
    t.integer  "barangay_id"
    t.string   "name"
    t.text     "description"
    t.date     "date_info_gathered"
    t.integer  "arb_male"
    t.integer  "arb_female"
    t.integer  "non_arb_male"
    t.integer  "non_arb_female"
    t.integer  "arb_household"
    t.integer  "non_arb_household"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barangay_trainings", force: true do |t|
    t.string   "tag"
    t.integer  "barangay_id"
    t.string   "training_title"
    t.text     "description"
    t.string   "source_of_funds"
    t.decimal  "amount"
    t.string   "conducted_by"
    t.date     "date_conducted"
    t.integer  "particpants_male_arb"
    t.integer  "participants_male_non_arb"
    t.integer  "participants_female_arb"
    t.integer  "participants_female_non_arb"
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

  create_table "bridge_project_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "congressional_districts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credit_provider_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.integer  "province_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ecosystem_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "education_service_provided_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_statuses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "environmental_concern_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faps_coverages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "farm_practice_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fmr_project_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "health_service_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "irrigation_facility_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "irrigation_project_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_access_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_status_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managed_by_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marketing_area_outlet_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marketing_outlet_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microfinance_service_provider_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipalities", force: true do |t|
    t.string   "tag"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "district_id"
  end

  create_table "natural_resource_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organization_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "other_service_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_harvest_facility_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "power_supply_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
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

  create_table "recreation_service_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "region_tag"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registering_agencies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "water_system_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "womens_desk_service_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "womens_organization_typologies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
