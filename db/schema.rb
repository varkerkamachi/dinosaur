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

ActiveRecord::Schema.define(version: 20160221065708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "climates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.jsonb    "metadata"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dinos", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.jsonb    "metadata"
    t.integer  "era_id"
    t.string   "diet"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dinos", ["era_id"], name: "index_dinos_on_era_id", using: :btree
  add_index "dinos", ["location_id"], name: "index_dinos_on_location_id", using: :btree

  create_table "eras", force: :cascade do |t|
    t.string   "name"
    t.string   "duration"
    t.string   "began"
    t.string   "ended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "large_image1"
    t.string   "large_image2"
    t.string   "large_image3"
    t.string   "map_image"
    t.string   "thumbnail"
    t.integer  "dino_id"
    t.boolean  "user_uploaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "climate_id"
    t.jsonb    "metadata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["climate_id"], name: "index_locations_on_climate_id", using: :btree

  add_foreign_key "dinos", "eras"
  add_foreign_key "dinos", "locations"
  add_foreign_key "galleries", "dinos"
  add_foreign_key "locations", "climates"
end
