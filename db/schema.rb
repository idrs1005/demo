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

ActiveRecord::Schema.define(version: 20160212223740) do

  create_table "pacientes", force: :cascade do |t|
    t.string   "nombre",           limit: 255
    t.string   "apellido1",        limit: 255
    t.string   "apellido2",        limit: 255
    t.datetime "fecha_nacimiento"
    t.string   "email",            limit: 255
    t.string   "usuario",          limit: 255
    t.string   "password",         limit: 255
    t.string   "identificacion",   limit: 255
    t.string   "sexo",             limit: 255
    t.string   "ocupacion",        limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "publicacions", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.text     "contenido",  limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "authenticity_token", limit: 255
    t.string   "usuario",            limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre",           limit: 255
    t.string   "apellido",         limit: 255
    t.datetime "fecha_nacimiento"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
