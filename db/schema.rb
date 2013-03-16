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

ActiveRecord::Schema.define(:version => 20120926183411) do

  create_table "annex1_project_participants", :force => true do |t|
    t.integer  "project_id"
    t.integer  "entity_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consultants", :force => true do |t|
    t.integer  "project_id"
    t.integer  "entity_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "designated_national_authorities", :force => true do |t|
    t.integer  "project_id"
    t.integer  "entity_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "designated_operational_entities", :force => true do |t|
    t.integer  "project_id"
    t.integer  "entity_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entities", :force => true do |t|
    t.string   "ent_title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "host_project_participants", :force => true do |t|
    t.integer  "project_id"
    t.integer  "entity_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "project_id"
    t.string   "ref"
    t.float    "lat"
    t.float    "lng"
    t.string   "region"
    t.string   "sub_region"
    t.string   "country"
    t.string   "province"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "methodologies", :force => true do |t|
    t.string   "meth_number"
    t.string   "meth_title"
    t.string   "meth_version"
    t.boolean  "meth_active"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pr_meth", :id => false, :force => true do |t|
    t.integer "methodology_id"
    t.integer "project_id"
  end

  add_index "pr_meth", ["project_id", "methodology_id"], :name => "index_pr_meth_on_project_id_and_methodology_id"

  create_table "projects", :force => true do |t|
    t.string   "cdm_id"
    t.string   "ref"
    t.string   "title"
    t.string   "status"
    t.string   "methodology"
    t.string   "pr_type"
    t.string   "sub_type"
    t.date     "reg"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "pr_url"
  end

end
