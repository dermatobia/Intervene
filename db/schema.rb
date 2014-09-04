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

ActiveRecord::Schema.define(version: 20140904185113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "app_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "app_users", ["email"], name: "index_app_users_on_email", unique: true, using: :btree
  add_index "app_users", ["reset_password_token"], name: "index_app_users_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intervention_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intervention_types_subcategories", id: false, force: true do |t|
    t.integer  "subcategory_id"
    t.integer  "intervention_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_districts", force: true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.integer  "school_system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "fax"
  end

  create_table "school_systems", force: true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "fax"
  end

  create_table "schools", force: true do |t|
    t.string   "district"
    t.string   "name"
    t.string   "mission"
    t.string   "image_url"
    t.string   "website"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "work_phone"
    t.string   "fax"
    t.integer  "school_district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip_code"
    t.string   "image_upload"
  end

  create_table "service_providers", force: true do |t|
    t.string   "name"
    t.string   "mission"
    t.string   "image"
    t.string   "remote_image_url"
    t.string   "website"
    t.string   "providers_email"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "work_phone"
    t.string   "fax"
    t.boolean  "published",        default: false
    t.text     "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_providers_subcategories", id: false, force: true do |t|
    t.integer  "service_provider_id"
    t.integer  "subcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategories", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
