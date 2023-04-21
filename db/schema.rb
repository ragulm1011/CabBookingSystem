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

ActiveRecord::Schema[7.0].define(version: 2023_04_20_163213) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "door_no"
    t.string "street"
    t.string "city"
    t.string "district"
    t.string "state"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "addressable_id"
    t.string "addressable_type"
  end

  create_table "booking_requests", force: :cascade do |t|
    t.string "city"
    t.string "booking_status"
    t.string "vehicle_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "from_location_id"
    t.integer "to_location_id"
    t.integer "rider_id"
    t.string "from_location_name"
    t.string "to_location_name"
  end

  create_table "checks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "liscense_no"
    t.float "driver_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "standby_city"
  end

  create_table "drivers_vehicles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "driver_id"
    t.integer "vehicle_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_name"
    t.string "landmark"
    t.string "city"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_descriptions", force: :cascade do |t|
    t.string "mode_of_payment"
    t.integer "amount"
    t.string "credentials"
    t.string "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_summaries", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rider_id"
    t.integer "driver_id"
    t.integer "ride_id"
    t.integer "payment_description_id"
  end

  create_table "riders", force: :cascade do |t|
    t.string "gender"
    t.string "aadhar_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rides", force: :cascade do |t|
    t.integer "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rider_id"
    t.integer "driver_id"
    t.integer "booking_request_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "password"
    t.string "mobile_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userable_id"
    t.string "userable_type"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "vehicle_type"
    t.integer "no_of_seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
