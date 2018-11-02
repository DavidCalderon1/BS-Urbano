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

ActiveRecord::Schema.define(version: 2018_11_02_225824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barrios", force: :cascade do |t|
    t.string "nombre"
    t.integer "localidad_id"
    t.string "latitud"
    t.string "longitud"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casos", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "barrio_id"
    t.integer "tipo_basura"
    t.string "foto_string"
    t.text "detalle"
    t.integer "estado_id"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "nombre"
    t.integer "tipoe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localidades", force: :cascade do |t|
    t.string "nombre"
    t.integer "ciudad_id"
    t.string "latitud"
    t.string "longitud"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notificaciones", force: :cascade do |t|
    t.integer "caso_id"
    t.integer "usuario_id"
    t.integer "visto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operadores", force: :cascade do |t|
    t.string "nombre"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publicaciones", force: :cascade do |t|
    t.string "foto"
    t.integer "estado_id"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rutas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sugerencias", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_basuras", force: :cascade do |t|
    t.string "nombre"
    t.string "foto"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tips", force: :cascade do |t|
    t.string "titulo"
    t.string "detalle"
    t.string "foto"
    t.integer "tipot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.integer "barrio_id"
    t.string "direccion", default: ""
    t.string "telefono", default: "", null: false
    t.string "foto", default: "", null: false
    t.integer "latitud", default: 0
    t.integer "longitud", default: 0
    t.integer "estado_id", default: 1, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
