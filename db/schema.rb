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

ActiveRecord::Schema.define(version: 20170715124023) do

  create_table "activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "member_id"
    t.bigint "company_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_comments_on_company_id"
    t.index ["member_id"], name: "index_comments_on_member_id"
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "activity_id"
    t.text "contact"
    t.text "number"
    t.text "email"
    t.string "address"
    t.string "web"
    t.bigint "status_id"
    t.bigint "member_id"
    t.bigint "event_id"
    t.boolean "allowed"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_companies_on_activity_id"
    t.index ["event_id"], name: "index_companies_on_event_id"
    t.index ["member_id"], name: "index_companies_on_member_id"
    t.index ["status_id"], name: "index_companies_on_status_id"
  end

  create_table "deleted_companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "activity_id"
    t.text "contact"
    t.text "number"
    t.text "email"
    t.string "address"
    t.string "web"
    t.bigint "status_id"
    t.bigint "member_id"
    t.bigint "event_id"
    t.boolean "allowed"
    t.text "note"
    t.integer "old_id"
    t.text "reason"
    t.integer "deleted_by_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_deleted_companies_on_activity_id"
    t.index ["deleted_by_id"], name: "index_deleted_companies_on_deleted_by_id"
    t.index ["event_id"], name: "index_deleted_companies_on_event_id"
    t.index ["member_id"], name: "index_deleted_companies_on_member_id"
    t.index ["old_id"], name: "index_deleted_companies_on_old_id"
    t.index ["status_id"], name: "index_deleted_companies_on_status_id"
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "surname"
    t.string "password"
    t.string "email"
    t.bigint "member_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["member_type_id"], name: "index_members_on_member_type_id"
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "member_id"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_posts_on_member_id"
  end

  create_table "reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "company_id"
    t.bigint "event_id"
    t.bigint "member_id"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_reports_on_company_id"
    t.index ["event_id"], name: "index_reports_on_event_id"
    t.index ["member_id"], name: "index_reports_on_member_id"
  end

  create_table "statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "companies"
  add_foreign_key "comments", "members"
  add_foreign_key "companies", "activities"
  add_foreign_key "companies", "events"
  add_foreign_key "companies", "members"
  add_foreign_key "companies", "statuses"
  add_foreign_key "deleted_companies", "activities"
  add_foreign_key "deleted_companies", "events"
  add_foreign_key "deleted_companies", "members"
  add_foreign_key "deleted_companies", "statuses"
  add_foreign_key "members", "member_types"
  add_foreign_key "posts", "members"
  add_foreign_key "reports", "companies"
  add_foreign_key "reports", "events"
  add_foreign_key "reports", "members"
end
