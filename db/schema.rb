# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160226065455) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "exam_answers", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "exam_paper_id",  limit: 4
    t.integer  "exam_option_id", limit: 4
    t.integer  "subject_id",     limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "flag",           limit: 4, default: 0
  end

  add_index "exam_answers", ["exam_option_id"], name: "index_exam_answers_on_exam_option_id", using: :btree
  add_index "exam_answers", ["exam_paper_id"], name: "index_exam_answers_on_exam_paper_id", using: :btree
  add_index "exam_answers", ["subject_id"], name: "index_exam_answers_on_subject_id", using: :btree
  add_index "exam_answers", ["user_id"], name: "index_exam_answers_on_user_id", using: :btree

  create_table "exam_options", force: :cascade do |t|
    t.text     "title",      limit: 65535
    t.integer  "subject_id", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "flag",       limit: 4,     default: 0
    t.text     "reason",     limit: 65535
  end

  add_index "exam_options", ["subject_id"], name: "index_exam_options_on_subject_id", using: :btree

  create_table "exam_papers", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "subjects_count", limit: 4,   default: 0
  end

  create_table "subjects", force: :cascade do |t|
    t.text     "content",       limit: 65535
    t.integer  "exam_paper_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "subjects", ["exam_paper_id"], name: "index_subjects_on_exam_paper_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "exam_options", "subjects"
  add_foreign_key "subjects", "exam_papers"
end
