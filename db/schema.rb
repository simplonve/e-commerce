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

ActiveRecord::Schema.define(version: 20150527090853) do

  create_table "clients", force: :cascade do |t|
    t.integer "numclient"
    t.string  "nom"
    t.string  "prenom"
    t.string  "adresse"
    t.integer "codepostal"
    t.string  "ville"
    t.string  "pays"
    t.string  "telephone"
    t.string  "mail"
  end

  create_table "commandes", force: :cascade do |t|
    t.integer  "numclient"
    t.string   "refproduit"
    t.string   "article"
    t.string   "descriptif"
    t.integer  "numcommande"
    t.integer  "quantitearticle"
    t.float    "totalprixarticle"
    t.float    "totalprixcommande"
    t.datetime "date"
    t.integer  "produit_id"
    t.text     "validation"
  end

  create_table "produits", force: :cascade do |t|
    t.string  "refproduit"
    t.string  "article"
    t.string  "descriptif"
    t.integer "stock"
    t.float   "prixproduit"
  end

end
