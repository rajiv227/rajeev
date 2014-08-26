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

ActiveRecord::Schema.define(version: 20140518054922) do

  create_table "mbas", force: true do |t|
    t.string  "name"
    t.integer "user_id"
    t.string  "school"
    t.string  "mbatype"
    t.string  "function"
    t.string  "company"
  end

  create_table "slots", force: true do |t|
    t.integer "mba_id"
    t.boolean "booked"
    t.date    "slotdate"
  end

  create_table "users", force: true do |t|
    t.string "email"
    t.string "password"
  end

end
