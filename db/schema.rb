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

ActiveRecord::Schema.define(version: 20180728213600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "descriptions", force: :cascade do |t|
    t.string "item_type"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "label"
    t.string "location"
    t.date "start_date"
    t.string "position"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_descriptions", force: :cascade do |t|
    t.bigint "photo_id"
    t.bigint "experience_id"
    t.bigint "description_id"
    t.string "item_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description_id"], name: "index_item_descriptions_on_description_id"
    t.index ["experience_id"], name: "index_item_descriptions_on_experience_id"
    t.index ["photo_id"], name: "index_item_descriptions_on_photo_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "label"
    t.string "location"
    t.string "path"
    t.date "photo_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "item_descriptions", "descriptions"
  add_foreign_key "item_descriptions", "experiences"
  add_foreign_key "item_descriptions", "photos"
end
