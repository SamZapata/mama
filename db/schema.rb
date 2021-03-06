# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_12_223434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_media_joins", force: :cascade do |t|
    t.integer "album_id"
    t.integer "multimedium_id"
    t.string "adjective"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "since_date"
    t.date "till_date"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "multimedia", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.string "uri_path"
    t.date "capture_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
