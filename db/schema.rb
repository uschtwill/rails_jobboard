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

ActiveRecord::Schema.define(version: 20150224085830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username"
    t.string   "website"
    t.string   "phone"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "location"
    t.string   "industry"
    t.text     "vision"
    t.text     "mission"
    t.integer  "founded"
    t.integer  "employees"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.string   "url"
    t.text     "description"
    t.integer  "salary"
    t.integer  "working_hours"
    t.string   "location"
    t.string   "department"
    t.string   "team"
    t.text     "responsibility"
    t.text     "job_description"
    t.text     "requirements"
    t.text     "perks"
    t.string   "email"
    t.integer  "phone"
    t.text     "application"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
