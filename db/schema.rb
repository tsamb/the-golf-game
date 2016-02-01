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

ActiveRecord::Schema.define(version: 20160131113450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foursomes", force: :cascade do |t|
    t.integer  "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "foursomes", ["round_id"], name: "index_foursomes_on_round_id", using: :btree

  create_table "pair_groupings", force: :cascade do |t|
    t.integer  "pair_id"
    t.integer  "foursome_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pair_groupings", ["foursome_id"], name: "index_pair_groupings_on_foursome_id", using: :btree
  add_index "pair_groupings", ["pair_id"], name: "index_pair_groupings_on_pair_id", using: :btree

  create_table "pairings", force: :cascade do |t|
    t.integer  "pair_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pairings", ["pair_id"], name: "index_pairings_on_pair_id", using: :btree
  add_index "pairings", ["player_id"], name: "index_pairings_on_player_id", using: :btree

  create_table "pairs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "handicap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "course_id"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rounds", ["course_id"], name: "index_rounds_on_course_id", using: :btree

  add_foreign_key "foursomes", "rounds"
  add_foreign_key "pair_groupings", "foursomes"
  add_foreign_key "pair_groupings", "pairs"
  add_foreign_key "pairings", "pairs"
  add_foreign_key "pairings", "players"
  add_foreign_key "rounds", "courses"
end
