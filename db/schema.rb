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

ActiveRecord::Schema.define(:version => 20130316005546) do

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "end_rua"
    t.string   "end_num"
    t.string   "end_comp"
    t.string   "end_cep"
    t.string   "end_bai"
    t.string   "end_cid"
    t.string   "celular"
    t.string   "email"
    t.string   "login"             #O login será o email, talvez tenha que tirar
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "password"
  end

  add_index "usuarios", ["login"], :name => "index_usuarios_on_login", :unique => true

end
