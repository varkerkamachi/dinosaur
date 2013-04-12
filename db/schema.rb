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

ActiveRecord::Schema.define(:version => 20130412023845) do

  create_table "countries", :force => true do |t|
    t.string   "iso"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dinos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.string   "thumb"
    t.string   "terrain"
    t.decimal  "weight",      :precision => 8, :scale => 2
    t.decimal  "height",      :precision => 8, :scale => 2
    t.decimal  "speed",       :precision => 8, :scale => 2
    t.float    "geoX"
    t.float    "geoY"
    t.string   "era"
    t.string   "diet"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "abbr"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
