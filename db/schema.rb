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

ActiveRecord::Schema.define(version: 2020_03_02_175103) do

  create_table "cases", force: :cascade do |t|
    t.string "title"
    t.string "picture"
    t.integer "rating_boost"
    t.text "disclosure"
    t.integer "creator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "options", force: :cascade do |t|
    t.integer "points"
    t.string "description"
    t.integer "case_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_options_on_case_id"
  end

  create_table "rulings", force: :cascade do |t|
    t.integer "verdict"
    t.integer "user_id"
    t.integer "case_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_rulings_on_case_id"
    t.index ["user_id"], name: "index_rulings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end