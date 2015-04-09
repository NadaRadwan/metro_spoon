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

ActiveRecord::Schema.define(version: 20150409002242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: true do |t|
    t.integer  "fopen"
    t.string   "manager"
    t.string   "phone"
    t.string   "postal"
    t.string   "address"
    t.string   "mon"
    t.string   "tue"
    t.string   "wed"
    t.string   "thurs"
    t.string   "fri"
    t.string   "sat"
    t.string   "sun"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "locations", ["restaurant_id", "created_at"], name: "index_locations_on_restaurant_id_and_created_at", using: :btree
  add_index "locations", ["restaurant_id"], name: "index_locations_on_restaurant_id", using: :btree

  create_table "menuitems", force: true do |t|
    t.string   "name"
    t.string   "mtype"
    t.string   "category"
    t.text     "description"
    t.decimal  "price"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "menuitems", ["restaurant_id", "created_at"], name: "index_menuitems_on_restaurant_id_and_created_at", using: :btree
  add_index "menuitems", ["restaurant_id"], name: "index_menuitems_on_restaurant_id", using: :btree

  create_table "raters", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "atype"
    t.integer  "reputation"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
  end

  add_index "raters", ["email"], name: "index_raters_on_email", unique: true, using: :btree

  create_table "ratings", force: true do |t|
    t.integer  "price"
    t.integer  "food"
    t.integer  "mood"
    t.integer  "staff"
    t.text     "comment"
    t.integer  "restaurant_id"
    t.integer  "rater_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "ratings", ["rater_id"], name: "index_ratings_on_rater_id", using: :btree
  add_index "ratings", ["restaurant_id", "rater_id"], name: "index_ratings_on_restaurant_id_and_rater_id", using: :btree
  add_index "ratings", ["restaurant_id"], name: "index_ratings_on_restaurant_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "rtype"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["name"], name: "index_restaurants_on_name", unique: true, using: :btree

  add_foreign_key "locations", "restaurants", name: "locations_restaurant_id_fk"

  add_foreign_key "menuitems", "restaurants", name: "menuitems_restaurant_id_fk"

  add_foreign_key "ratings", "raters", name: "ratings_rater_id_fk"
  add_foreign_key "ratings", "restaurants", name: "ratings_restaurant_id_fk"

end
