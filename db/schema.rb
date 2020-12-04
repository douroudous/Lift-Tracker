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

ActiveRecord::Schema.define(version: 2020_05_25_160044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lift_workouts", force: :cascade do |t|
    t.integer "weight"
    t.bigint "workout_id", null: false
    t.bigint "lift_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lift_id"], name: "index_lift_workouts_on_lift_id"
    t.index ["workout_id"], name: "index_lift_workouts_on_workout_id"
  end

  create_table "lifts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "body_weight", null: false
    t.date "workout_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["workout_date"], name: "index_workouts_on_workout_date", unique: true
  end

  add_foreign_key "lift_workouts", "lifts"
  add_foreign_key "lift_workouts", "workouts"
end
