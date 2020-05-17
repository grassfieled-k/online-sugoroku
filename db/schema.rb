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

ActiveRecord::Schema.define(version: 2020_05_17_183354) do

  create_table "colors", force: :cascade do |t|
    t.string "color"
    t.integer "for_player_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", id: false, force: :cascade do |t|
    t.string "event_id", null: false
    t.string "event_name"
    t.integer "event_type"
    t.text "message"
    t.integer "default_money"
    t.integer "default_intelligence"
    t.integer "default_strength"
    t.integer "default_morality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", id: false, force: :cascade do |t|
    t.string "game_id", null: false
    t.string "game_name"
    t.string "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_name"
    t.integer "job_type_id"
    t.integer "salary"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", id: false, force: :cascade do |t|
    t.string "map_id", null: false
    t.string "map_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", id: false, force: :cascade do |t|
    t.string "player_id", null: false
    t.string "player_name"
    t.integer "position"
    t.integer "money"
    t.integer "job_id"
    t.integer "home_id"
    t.integer "intelligence"
    t.integer "strength"
    t.integer "sense"
    t.integer "morality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "game_id"
    t.integer "player_no"
  end

  create_table "spaces", id: false, force: :cascade do |t|
    t.string "space_id", null: false
    t.string "map_id"
    t.integer "position"
    t.integer "event_type"
    t.string "events_pool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
