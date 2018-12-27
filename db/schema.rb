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

ActiveRecord::Schema.define(version: 20181227014928) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "top_category", null: false
    t.string   "sub_category", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["sub_category"], name: "index_categories_on_sub_category", using: :btree
    t.index ["top_category"], name: "index_categories_on_top_category", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "item_num",                       null: false
    t.string   "name",                           null: false
    t.integer  "price",                          null: false
    t.integer  "stock",                          null: false
    t.text     "item_description", limit: 65535, null: false
    t.integer  "category_id"
    t.integer  "shop_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
    t.index ["name"], name: "index_items_on_name", using: :btree
    t.index ["shop_id"], name: "index_items_on_shop_id", using: :btree
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",              null: false
    t.string   "shop_introduction", null: false
    t.string   "self_introduction", null: false
    t.string   "string",            null: false
    t.string   "heder_image"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
