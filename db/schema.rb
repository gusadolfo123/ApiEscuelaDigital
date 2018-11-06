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

ActiveRecord::Schema.define(version: 2018_11_06_023943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "document_types", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "email"
    t.string "documentNumber"
    t.string "photo"
    t.string "password_digest"
    t.bigint "rol_id"
    t.bigint "document_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_type_id"], name: "index_users_on_document_type_id"
    t.index ["rol_id"], name: "index_users_on_rol_id"
  end

  add_foreign_key "users", "document_types"
  add_foreign_key "users", "rols"
end
