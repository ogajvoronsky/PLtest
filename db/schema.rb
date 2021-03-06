# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170206131235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.integer  "CardNumber"
    t.string   "RealName"
    t.string   "Gender"
    t.date     "Birthday"
    t.string   "Occupation"
    t.string   "TypeOfCard"
    t.float    "EgoBalance"
    t.string   "MobileNumber"
    t.string   "email"
    t.string   "Issued"
    t.date     "LastBuy"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["CardNumber"], name: "index_cards_on_CardNumber", using: :btree
  end

  create_table "csv_files", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "uploaded_file_csv_file_name"
    t.string   "uploaded_file_csv_content_type"
    t.integer  "uploaded_file_csv_file_size"
    t.datetime "uploaded_file_csv_updated_at"
  end

end
