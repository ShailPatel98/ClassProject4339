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

ActiveRecord::Schema.define(version: 2019_10_24_023116) do

  create_table "class_assignments", force: :cascade do |t|
    t.integer "professor_id", null: false
    t.integer "classroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_class_assignments_on_classroom_id"
    t.index ["professor_id"], name: "index_class_assignments_on_professor_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.integer "class_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offices", force: :cascade do |t|
    t.integer "room_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "office_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["office_id"], name: "index_professors_on_office_id"
  end

  add_foreign_key "class_assignments", "classrooms"
  add_foreign_key "class_assignments", "professors"
  add_foreign_key "professors", "offices"
end
