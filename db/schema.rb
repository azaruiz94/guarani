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

ActiveRecord::Schema.define(version: 20180321025339) do

  create_table "departamentos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distritos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "departamento_id"
    t.index ["departamento_id"], name: "index_distritos_on_departamento_id", using: :btree
  end

  create_table "inmuebles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "codigo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "servicio_id"
    t.integer  "distrito_id"
    t.integer  "tipo_inmueble_id"
    t.index ["distrito_id"], name: "index_inmuebles_on_distrito_id", using: :btree
    t.index ["servicio_id"], name: "index_inmuebles_on_servicio_id", using: :btree
    t.index ["tipo_inmueble_id"], name: "index_inmuebles_on_tipo_inmueble_id", using: :btree
  end

  create_table "servicios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_inmuebles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "distritos", "departamentos"
  add_foreign_key "inmuebles", "distritos"
  add_foreign_key "inmuebles", "servicios"
  add_foreign_key "inmuebles", "tipo_inmuebles"
end
