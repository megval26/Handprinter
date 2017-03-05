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

ActiveRecord::Schema.define(version: 20170305185954) do

  create_table "action_idea_comments", force: :cascade do |t|
    t.integer  "action_idea_id"
    t.integer  "user_id"
    t.date     "date_created"
    t.string   "text"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "action_idea_inactives", force: :cascade do |t|
    t.string   "action_idea_id"
    t.string   "integer"
    t.string   "reason"
    t.integer  "user_id"
    t.date     "date_created"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "action_idea_votes", force: :cascade do |t|
    t.integer  "action_idea_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "action_ideas", force: :cascade do |t|
    t.integer  "creator"
    t.string   "name"
    t.string   "description"
    t.string   "references"
    t.string   "category"
    t.date     "date_created"
    t.boolean  "active"
    t.string   "tags"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "claims", force: :cascade do |t|
    t.integer  "model_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "inputs", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "example"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "model_comments", force: :cascade do |t|
    t.integer  "model_id"
    t.integer  "user_id"
    t.date     "date_created"
    t.string   "text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "model_inactives", force: :cascade do |t|
    t.integer  "model_id"
    t.string   "reason"
    t.integer  "user_id"
    t.date     "date_created"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "model_inputs", force: :cascade do |t|
    t.integer  "model_id"
    t.integer  "input_id"
    t.integer  "source_id"
    t.string   "units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "model_votes", force: :cascade do |t|
    t.integer  "model_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "action_idea_id"
    t.date     "date_created"
    t.integer  "category"
    t.string   "description"
    t.string   "anchor"
    t.string   "equation"
    t.string   "assumptions"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sources", force: :cascade do |t|
    t.integer  "claim_id"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "location"
    t.string   "email"
    t.date     "date_created"
    t.integer  "role"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
