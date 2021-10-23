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

ActiveRecord::Schema.define(version: 2021_10_23_170934) do

  create_table "table_ones", force: :cascade do |t|
    t.string "terms_of_services"
    t.string "password"
    t.string "login_source"
    t.string "email"
    t.integer "aadhar_id"
    t.integer "year"
    t.string "email_service"
  end

end
