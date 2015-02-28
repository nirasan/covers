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

ActiveRecord::Schema.define(version: 20150228083120) do

  create_table "books", force: true do |t|
    t.text     "title"
    t.string   "asin"
    t.text     "page_url"
    t.text     "small_image"
    t.text     "medium_image"
    t.text     "large_image"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books_browse_nodes", force: true do |t|
    t.integer "book_id"
    t.integer "browse_node_id"
  end

  create_table "browse_nodes", force: true do |t|
    t.text     "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
