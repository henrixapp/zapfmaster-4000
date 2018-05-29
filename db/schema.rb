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

ActiveRecord::Schema.define(version: 2018_05_29_191439) do

  create_table "aks", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.boolean "reso"
    t.integer "room_id"
    t.integer "timeslot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.index ["room_id"], name: "index_aks_on_room_id"
    t.index ["timeslot_id"], name: "index_aks_on_timeslot_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "uni_short"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsibles", force: :cascade do |t|
    t.integer "ak_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ak_id"], name: "index_responsibles_on_ak_id"
    t.index ["person_id"], name: "index_responsibles_on_person_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.string "name"
    t.datetime "beginn"
    t.datetime "ende"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "typus"
    t.string "place"
    t.string "begin_humanized"
    t.string "end_humanized"
  end

end
