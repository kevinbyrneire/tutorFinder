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

ActiveRecord::Schema.define(version: 20141029130810) do

  create_table "subject_items", force: true do |t|
    t.integer  "tutors_id"
    t.integer  "subjects_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subject_items", ["subjects_id"], name: "index_subject_items_on_subjects_id"
  add_index "subject_items", ["tutors_id"], name: "index_subject_items_on_tutors_id"

  create_table "subjects", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subject"
  end

  create_table "tutors", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.date     "age"
    t.string   "phone"
    t.string   "location"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
