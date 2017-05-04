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

ActiveRecord::Schema.define(version: 20170420154341) do

  create_table "acts", force: :cascade do |t|
    t.integer  "number"
    t.integer  "script_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "acts", ["script_id"], name: "index_acts_on_script_id"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "age"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "script_id"
  end

  add_index "characters", ["script_id"], name: "index_characters_on_script_id"

  create_table "scenes", force: :cascade do |t|
    t.integer  "act_id"
    t.integer  "number"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "scenes", ["act_id"], name: "index_scenes_on_act_id"

  create_table "scripts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "scripts", ["user_id"], name: "index_scripts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
