# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_28_140015) do
  create_table "friends", charset: "utf8mb4", force: :cascade do |t|
    t.string "friendme", null: false
    t.string "friendyou", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reactions", charset: "utf8mb4", force: :cascade do |t|
    t.string "myname", null: false
    t.string "yourname", null: false
    t.integer "kind", default: 0, null: false
    t.integer "kind_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studynotes", charset: "utf8mb4", force: :cascade do |t|
    t.date "date", null: false
    t.time "studytime", null: false
    t.integer "subject", null: false
    t.string "username", null: false
    t.text "goal", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "password", null: false
    t.string "friend", null: false
    t.integer "login", default: 0, null: false
    t.datetime "login_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
