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

ActiveRecord::Schema.define(version: 20160602091419) do

  create_table "cducations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_and_end_date"
    t.string   "school"
    t.string   "major"
    t.string   "leaming_form"
    t.string   "qualifications_and_degree"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "departments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "birth_date"
    t.string   "marriage"
    t.string   "nation"
    t.string   "origin"
    t.string   "political_landscape"
    t.string   "physical_condition"
    t.string   "height"
    t.string   "weight"
    t.integer  "contact_phone"
    t.string   "graduation_time"
    t.string   "graduate"
    t.string   "_school"
    t.string   "major"
    t.string   "highest_degree"
    t.integer  "id_card_number"
    t.string   "permanent_address"
    t.string   "live_address"
    t.string   "mailbox"
    t.string   "salary_expectation"
    t.string   "ox"
    t.datetime "arrival_time"
    t.string   "self_evaluation"
    t.integer  "department_id"
    t.datetime "date_of_application"
    t.string   "office_software"
    t.string   "reasons_for_applying"
    t.integer  "education_id"
    t.integer  "work_experience_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  create_table "work_experiences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_and_end_date"
    t.string   "work_unit"
    t.string   "post"
    t.string   "salary"
    t.string   "reasons_for_leaving"
    t.string   "witness"
    t.string   "telephone"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
