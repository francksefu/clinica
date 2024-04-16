# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_16_090647) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avaliacao_instrumentos", force: :cascade do |t|
    t.bigint "avaliacao_id", null: false
    t.bigint "instrumento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "estado"
    t.index ["avaliacao_id"], name: "index_avaliacao_instrumentos_on_avaliacao_id"
    t.index ["instrumento_id"], name: "index_avaliacao_instrumentos_on_instrumento_id"
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "email"
    t.date "data_de_nascimento"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pontuacao"
    t.index ["user_id"], name: "index_avaliacaos_on_user_id"
  end

  create_table "avaliados", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "email"
    t.date "data_de_nascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "avaliacao_instrumento_id", null: false
    t.index ["avaliacao_instrumento_id"], name: "index_avaliados_on_avaliacao_instrumento_id"
  end

  create_table "instrumentos", force: :cascade do |t|
    t.text "pergunta_um"
    t.text "pergunta_dois"
    t.text "pergunta_tres"
    t.text "pergunta_quatro"
    t.text "pergunta_cinco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "titulo"
  end

  create_table "users", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "avaliacao_instrumentos", "avaliacaos"
  add_foreign_key "avaliacao_instrumentos", "instrumentos"
  add_foreign_key "avaliacaos", "users"
  add_foreign_key "avaliados", "avaliacao_instrumentos"
end
