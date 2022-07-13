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

ActiveRecord::Schema[7.0].define(version: 2022_07_13_055325) do
  create_table "historico_users", force: :cascade do |t|
    t.integer "reserva_livro_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["reserva_livro_id"], name: "index_historico_users_on_reserva_livro_id"
  end

  create_table "livro_quantities", force: :cascade do |t|
    t.integer "livro_id"
    t.integer "quantidade"
    t.integer "user_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["livro_id"], name: "index_livro_quantities_on_livro_id"
    t.index ["user_id"], name: "index_livro_quantities_on_user_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "autores"
    t.string "editora"
    t.string "descricao"
    t.string "banner"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "reserva_livros", force: :cascade do |t|
    t.integer "user_id"
    t.integer "livro_id"
    t.integer "status"
    t.date "checkin"
    t.date "checkout"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["livro_id"], name: "index_reserva_livros_on_livro_id"
    t.index ["user_id"], name: "index_reserva_livros_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.integer "kind"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "historico_users", "reserva_livros"
  add_foreign_key "livro_quantities", "livros"
  add_foreign_key "livro_quantities", "users"
  add_foreign_key "reserva_livros", "livros"
  add_foreign_key "reserva_livros", "users"
end
