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

ActiveRecord::Schema[7.0].define(version: 2023_04_21_170012) do
  create_table "contests", force: :cascade do |t|
    t.string "name_of_contest"
    t.string "contest_type"
    t.integer "entry_fee"
    t.string "status_match"
    t.integer "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_contests_on_match_id"
  end

  create_table "match_points", force: :cascade do |t|
    t.string "type_of_shot"
    t.integer "point"
    t.string "team_played"
    t.integer "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_points_on_match_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "match_name"
    t.time "duration"
    t.string "location"
    t.string "match_status"
    t.string "winner"
    t.integer "team_1_score"
    t.integer "team_2_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "total_fee"
    t.integer "total_prize_money"
    t.integer "taxes"
    t.integer "gross_profit"
    t.integer "net_profit"
    t.integer "contest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_id"], name: "index_payments_on_contest_id"
  end

  create_table "prediction_by_points_ranges", force: :cascade do |t|
    t.integer "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_prediction_by_points_ranges_on_match_id"
  end

  create_table "prediction_by_shots", force: :cascade do |t|
    t.integer "match_point_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_point_id"], name: "index_prediction_by_shots_on_match_point_id"
  end

  create_table "prediction_by_teams", force: :cascade do |t|
    t.integer "user_contest_prediction_id"
    t.integer "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_prediction_by_teams_on_match_id"
    t.index ["user_contest_prediction_id"], name: "index_prediction_by_teams_on_user_contest_prediction_id"
  end

  create_table "user_contest_predictions", force: :cascade do |t|
    t.boolean "prediction_outcome"
    t.integer "amount_earned"
    t.string "predictable_type"
    t.integer "predictable_id"
    t.integer "user_contest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["predictable_type", "predictable_id"], name: "index_user_contest_predictions_on_predictable"
    t.index ["user_contest_id"], name: "index_user_contest_predictions_on_user_contest_id"
  end

  create_table "user_contests", force: :cascade do |t|
    t.integer "credited_amount"
    t.integer "user_id"
    t.integer "contest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_id"], name: "index_user_contests_on_contest_id"
    t.index ["user_id"], name: "index_user_contests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "name"
    t.string "role"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
