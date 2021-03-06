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

ActiveRecord::Schema.define(:version => 20130614035919) do

  create_table "band_usuarios", :force => true do |t|
    t.integer  "band_id"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bands", :force => true do |t|
    t.integer  "band_id"
    t.string   "name"
    t.string   "member"
    t.string   "style"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "districts", :force => true do |t|
    t.string   "id_district"
    t.string   "district"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dtypes", :force => true do |t|
    t.string   "tdd"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goconcerts", :force => true do |t|
    t.string   "data"
    t.integer  "usuario_id"
    t.integer  "name_concert_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "goconcerts", ["name_concert_id"], :name => "index_goconcerts_on_name_concert_id"
  add_index "goconcerts", ["usuario_id"], :name => "index_goconcerts_on_usuario_id"

  create_table "name_concerts", :force => true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "site_id"
    t.integer  "band_id"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "name_concerts", ["band_id"], :name => "index_name_concerts_on_band_id"
  add_index "name_concerts", ["site_id"], :name => "index_name_concerts_on_site_id"
  add_index "name_concerts", ["usuario_id"], :name => "index_name_concerts_on_usuario_id"

  create_table "roles", :force => true do |t|
    t.integer  "rol_id"
    t.string   "rol"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sites", :force => true do |t|
    t.integer  "site_id"
    t.string   "name"
    t.string   "address"
    t.string   "district"
    t.string   "map"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "gmaps"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "type_users", :force => true do |t|
    t.string   "nombre"
    t.date     "finicio"
    t.string   "correo"
    t.string   "clave"
    t.string   "rol_defecto"
    t.integer  "tur_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "user_id"
    t.string   "mail_confirmation"
    t.string   "num_identity"
    t.string   "doc_identity"
    t.string   "gender"
    t.string   "amaterno"
    t.string   "apaterno"
    t.integer  "tdu"
    t.string   "utype_id"
    t.string   "dtype_id"
    t.string   "name"
    t.string   "password_confirmation"
    t.string   "password"
    t.text     "roles"
  end

  create_table "utypes", :force => true do |t|
    t.string   "tdu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "viewers", :force => true do |t|
    t.integer  "v_id"
    t.string   "concert_id"
    t.string   "integer"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
