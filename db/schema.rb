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

ActiveRecord::Schema.define(version: 20170420052938) do

  create_table "clubs", force: :cascade do |t|
    t.string   "nombre"
    t.text     "desc"
    t.integer  "lider"
    t.boolean  "publico"
    t.boolean  "cupoabierto"
    t.string   "portada"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "finaliza"
    t.string   "video"
    t.string   "pdf"
    t.string   "link1"
    t.string   "link2"
    t.boolean  "abrevencido"
    t.boolean  "evaluavencido"
    t.integer  "peso"
    t.string   "evaluacion_file_name"
    t.string   "evaluacion_content_type"
    t.integer  "evaluacion_file_size"
    t.datetime "evaluacion_updated_at"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "club_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "club_id"
    t.text     "body"
    t.integer  "alcance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_posts_on_club_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.string   "lastname"
    t.string   "dni",                    default: "", null: false
    t.text     "bio"
    t.text     "socialids"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
