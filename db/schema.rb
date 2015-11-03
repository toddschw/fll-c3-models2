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

ActiveRecord::Schema.define(version: 20151102202212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_schools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "github"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",          null: false
    t.integer  "age"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "average_score"
    t.string   "dinosaur"
    t.integer  "code_school_id"
    t.boolean  "active"
    t.integer  "cohort"
  end

  add_index "users", ["code_school_id"], name: "index_users_on_code_school_id", using: :btree
  add_index "users", ["dinosaur"], name: "index_users_on_dinosaur", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "profiles", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "users", "code_schools"
end
