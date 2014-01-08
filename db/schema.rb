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

ActiveRecord::Schema.define(version: 20140108104919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "com_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "committees", force: true do |t|
    t.string   "wphone"
    t.string   "hphone"
    t.string   "fax"
    t.string   "mobile"
    t.string   "email"
    t.text     "notes"
    t.integer  "village_id"
    t.integer  "com_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "committees", ["com_type_id"], name: "index_committees_on_com_type_id", using: :btree
  add_index "committees", ["village_id"], name: "index_committees_on_village_id", using: :btree

  create_table "means_payments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_villages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "phone"
    t.string   "mobile"
    t.string   "email"
    t.integer  "suburb_id"
    t.integer  "category_id"
    t.integer  "member_village_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "financial_to"
  end

  add_index "members", ["category_id"], name: "index_members_on_category_id", using: :btree
  add_index "members", ["member_village_id"], name: "index_members_on_member_village_id", using: :btree
  add_index "members", ["suburb_id"], name: "index_members_on_suburb_id", using: :btree

  create_table "mpayments", force: true do |t|
    t.date     "pdate"
    t.decimal  "amount"
    t.string   "reference"
    t.string   "details"
    t.integer  "MeansPayment_id"
    t.integer  "Member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "financial_to"
  end

  add_index "mpayments", ["MeansPayment_id"], name: "index_mpayments_on_MeansPayment_id", using: :btree
  add_index "mpayments", ["Member_id"], name: "index_mpayments_on_Member_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "suburbs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "vcats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vcats_villages", id: false, force: true do |t|
    t.integer "village_id", null: false
    t.integer "vcat_id",    null: false
  end

  create_table "villages", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.integer  "suburb_id"
    t.string   "phone"
    t.string   "email"
    t.date     "financial_to"
    t.integer  "residents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "villages", ["suburb_id"], name: "index_villages_on_suburb_id", using: :btree

  create_table "villages_village_categories", id: false, force: true do |t|
    t.integer "village_id"
    t.integer "village_category_id"
  end

  create_table "vpayments", force: true do |t|
    t.date     "pdate"
    t.decimal  "amount"
    t.string   "reference"
    t.string   "details"
    t.integer  "MeansPayment_id"
    t.integer  "Village_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "financial_to"
  end

  add_index "vpayments", ["MeansPayment_id"], name: "index_vpayments_on_MeansPayment_id", using: :btree
  add_index "vpayments", ["Village_id"], name: "index_vpayments_on_Village_id", using: :btree

end
