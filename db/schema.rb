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

ActiveRecord::Schema[7.1].define(version: 2023_12_25_061145) do
  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "category_name", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_name"], name: "index_categories_on_category_name"
  end

  create_table "image_options", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.binary "image", size: :medium
    t.boolean "is_answer", default: false
    t.string "image_name"
    t.string "content_type"
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leader_boards", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "score", null: false
    t.datetime "submission_time"
    t.bigint "quiz_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_leader_boards_on_quiz_id"
    t.index ["user_id"], name: "index_leader_boards_on_user_id"
  end

  create_table "question_options", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "question_optionable_type"
    t.bigint "question_optionable_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_options_on_question_id"
  end

  create_table "questions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "question_text", null: false
    t.integer "option_type", default: 0
    t.bigint "admin_id"
    t.bigint "category_id"
    t.integer "difficulty_level", default: 0, null: false
    t.integer "marks", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_quiz_id"
    t.index ["admin_id"], name: "index_questions_on_admin_id"
    t.index ["category_id"], name: "index_questions_on_category_id"
    t.index ["user_quiz_id"], name: "index_questions_on_user_quiz_id"
  end

  create_table "questions_quizzes", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "quiz_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_questions_quizzes_on_question_id"
    t.index ["quiz_id"], name: "index_questions_quizzes_on_quiz_id"
  end

  create_table "quizzes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.integer "time_limit"
    t.bigint "category_id"
    t.integer "difficulty_level", default: 0
    t.bigint "admin_id"
    t.integer "quiz_type", default: 0
    t.float "cut_off", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_quizzes_on_admin_id"
    t.index ["category_id"], name: "index_quizzes_on_category_id"
    t.index ["title"], name: "index_quizzes_on_title"
  end

  create_table "text_options", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "text"
    t.boolean "is_answer", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_answers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_quiz_id"
    t.bigint "question_id"
    t.bigint "selected_options_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_user_answers_on_question_id"
    t.index ["selected_options_id"], name: "index_user_answers_on_selected_options_id"
    t.index ["user_quiz_id"], name: "index_user_answers_on_user_quiz_id"
  end

  create_table "user_quizzes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "user_id"
    t.bigint "quiz_id"
    t.integer "attempt", default: 1
    t.float "score", null: false
    t.float "total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_user_quizzes_on_quiz_id"
    t.index ["user_id"], name: "index_user_quizzes_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "password_confirmation"
    t.integer "user_type", default: 0
    t.datetime "last_login"
    t.string "last_login_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["full_name"], name: "index_users_on_full_name"
  end

  add_foreign_key "leader_boards", "quizzes"
  add_foreign_key "leader_boards", "users"
  add_foreign_key "question_options", "questions"
  add_foreign_key "questions", "categories"
  add_foreign_key "questions", "users", column: "admin_id"
  add_foreign_key "quizzes", "categories"
  add_foreign_key "quizzes", "users", column: "admin_id"
  add_foreign_key "user_answers", "question_options", column: "selected_options_id"
  add_foreign_key "user_answers", "questions"
  add_foreign_key "user_answers", "user_quizzes"
  add_foreign_key "user_quizzes", "quizzes"
  add_foreign_key "user_quizzes", "users"
end
