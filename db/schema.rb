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

ActiveRecord::Schema.define(version: 20140422225642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: true do |t|
    t.string   "chapter_title"
    t.string   "chapter_number"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
    t.text     "summary"
    t.string   "author"
  end

  add_index "chapters", ["section_id"], name: "index_chapters_on_section_id", using: :btree

  create_table "images", force: true do |t|
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alt",               default: ""
    t.string   "hint"
  end

  create_table "questions", force: true do |t|
    t.string   "question"
    t.integer  "chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["chapter_id"], name: "index_questions_on_chapter_id", using: :btree

  create_table "sections", force: true do |t|
    t.string   "section_title"
    t.string   "section_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
