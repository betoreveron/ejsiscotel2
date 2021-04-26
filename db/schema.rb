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

ActiveRecord::Schema.define(version: 2021_04_25_182423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_people", force: :cascade do |t|
    t.string "doc_id", null: false
    t.date "doc_issue_date"
    t.date "doc_expiration_date"
    t.text "user_name"
    t.text "email"
    t.text "phone_number1"
    t.text "phone_number2"
    t.integer "fk_user_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_person", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.string "doc_id", limit: 15, null: false
    t.date "doc_issue_date", null: false
    t.date "doc_expiration_date", null: false
    t.string "user_name", limit: 255, null: false
    t.string "email", limit: 255, null: false
    t.string "phone_number1", limit: 25, null: false
    t.string "phone_number2", limit: 25
    t.integer "fk_user_type_id", null: false
    t.index ["doc_id"], name: "user_person_doc_id_key", unique: true
    t.index ["email"], name: "user_person_email_key", unique: true
    t.index ["phone_number1"], name: "user_person_phone_number1_key", unique: true
    t.index ["user_name"], name: "user_person_user_name_key", unique: true
  end

  create_table "user_type", primary_key: "user_type_id", id: :serial, force: :cascade do |t|
    t.string "user_type_name", limit: 15, null: false
    t.index ["user_type_name"], name: "user_type_user_type_name_key", unique: true
  end

  create_table "user_types", force: :cascade do |t|
    t.text "user_type_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_person", "user_type", column: "fk_user_type_id", primary_key: "user_type_id", name: "user_person_fk_user_type_id_fkey"
end
