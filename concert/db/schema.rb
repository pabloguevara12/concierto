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

ActiveRecord::Schema.define(:version => 20130529011639) do

  create_table "dtypes", :force => true do |t|
    t.string   "tdd"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "dtype_id"
    t.integer  "utype_id"
    t.string   "name"
    t.string   "apaterno"
    t.string   "amaterno"
    t.string   "gender"
    t.string   "doc_identity"
    t.string   "num_identity"
    t.string   "mail1"
    t.string   "mail2"
    t.string   "string"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "tdu"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "utypes", :force => true do |t|
    t.string   "tdu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
