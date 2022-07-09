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

ActiveRecord::Schema[7.0].define(version: 2022_07_07_203258) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "earnings_levels", force: :cascade do |t|
    t.integer "level_number"
    t.integer "bottom_limit"
    t.integer "top_limit"
  end

  create_table "employees", force: :cascade do |t|
    t.string "last_name"
    t.integer "salary"
    t.date "hire_date"
    t.bigint "department_id", null: false
    t.bigint "manager_id"
    t.integer "bonus"
    t.string "job_position"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "project_id", null: false
    t.integer "number_of_hours"
    t.integer "hourly_rate"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_orders_on_employee_id"
    t.index ["project_id"], name: "index_orders_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "budget"
    t.date "start_date"
    t.date "end_date"
  end

  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "employees", column: "manager_id"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "projects"
end
