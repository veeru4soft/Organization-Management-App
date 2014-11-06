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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130514065109) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "skill"
  end

  add_index "groups", ["organization_id"], :name => "index_groups_on_organization_id"

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "city"
    t.string   "state"
    t.integer  "phnum"
    t.string   "email"
    t.string   "website"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "phnum"
    t.integer  "group_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.date     "dob"
    t.string   "fname"
    t.string   "skill"
    t.string   "place"
    t.string   "email"
    t.binary   "propic"
    t.integer  "organization_id"
  end

  add_index "people", ["group_id"], :name => "index_people_on_group_id"

  create_table "skills", :force => true do |t|
    t.string   "skill1"
    t.string   "skill2"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "skill3"
    t.string   "skill4"
    t.string   "skill5"
    t.string   "skill6"
    t.string   "skill7"
    t.string   "skill8"
    t.string   "skill9"
    t.string   "skill10"
    t.integer  "group_id"
    t.string   "allskills"
  end

  add_index "skills", ["person_id"], :name => "index_skills_on_person_id"

end
