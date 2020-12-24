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

ActiveRecord::Schema.define(version: 2020_12_24_155853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lift_sets", force: :cascade do |t|
    t.integer "rep_count"
    t.bigint "lift_workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lift_workout_id"], name: "index_lift_sets_on_lift_workout_id"
  end

  create_table "lift_workouts", force: :cascade do |t|
    t.integer "weight"
    t.bigint "workout_id", null: false
    t.bigint "lift_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rep_count"
    t.index ["lift_id"], name: "index_lift_workouts_on_lift_id"
    t.index ["workout_id"], name: "index_lift_workouts_on_workout_id"
  end

  create_table "lifts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "routine_lifts", force: :cascade do |t|
    t.integer "rep_count", null: false
    t.integer "set_count", null: false
    t.bigint "routine_id", null: false
    t.bigint "lift_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lift_id"], name: "index_routine_lifts_on_lift_id"
    t.index ["routine_id"], name: "index_routine_lifts_on_routine_id"
  end

  create_table "routines", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "body_weight", null: false
    t.date "workout_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "routine_id"
    t.index ["routine_id"], name: "index_workouts_on_routine_id"
    t.index ["workout_date"], name: "index_workouts_on_workout_date", unique: true
  end

  add_foreign_key "lift_sets", "lift_workouts"
  add_foreign_key "lift_workouts", "lifts"
  add_foreign_key "lift_workouts", "workouts"
  add_foreign_key "routine_lifts", "lifts"
  add_foreign_key "routine_lifts", "routines"
  add_foreign_key "workouts", "routines"
end
