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

ActiveRecord::Schema.define(version: 2018_11_07_102924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_courses", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categories_courses_on_category_id"
    t.index ["course_id"], name: "index_categories_courses_on_course_id"
  end

  create_table "comments_courses", force: :cascade do |t|
    t.text "content"
    t.bigint "course_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_comments_courses_on_course_id"
    t.index ["user_id"], name: "index_comments_courses_on_user_id"
  end

  create_table "comments_lessons", force: :cascade do |t|
    t.text "content"
    t.bigint "lesson_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_comments_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_comments_lessons_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "Title"
    t.text "Description"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "courses_students", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courses_students_on_course_id"
    t.index ["student_id"], name: "index_courses_students_on_student_id"
  end

  create_table "document_types", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string "Title"
    t.text "Description"
    t.string "UrlVideo"
    t.bigint "temary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["temary_id"], name: "index_lessons_on_temary_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "Description"
    t.datetime "BirthDate"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "Description"
    t.string "Position"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "temaries", force: :cascade do |t|
    t.string "Title"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_temaries_on_course_id"
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

  add_foreign_key "categories_courses", "categories"
  add_foreign_key "categories_courses", "courses"
  add_foreign_key "comments_courses", "courses"
  add_foreign_key "comments_courses", "users"
  add_foreign_key "comments_lessons", "lessons"
  add_foreign_key "comments_lessons", "users"
  add_foreign_key "courses", "teachers"
  add_foreign_key "courses_students", "courses"
  add_foreign_key "courses_students", "students"
  add_foreign_key "lessons", "temaries"
  add_foreign_key "students", "users"
  add_foreign_key "teachers", "users"
  add_foreign_key "temaries", "courses"
  add_foreign_key "users", "document_types"
  add_foreign_key "users", "rols"
end
