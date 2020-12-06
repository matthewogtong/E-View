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

ActiveRecord::Schema.define(version: 2020_12_04_003119) do

  create_table "achievements", force: :cascade do |t|
    t.string "next_badge_achievement"
    t.string "badge"
    t.integer "points"
    t.integer "user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.float "rating"
    t.text "description"
    t.string "image"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "car_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "car_id", null: false
    t.text "content"
    t.float "rating"
    t.integer "likes", default: 0
    t.index ["car_id"], name: "index_reviews_on_car_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.integer "age"
    t.string "password_digest"
  end

  add_foreign_key "reviews", "cars"
  add_foreign_key "reviews", "users"
end
