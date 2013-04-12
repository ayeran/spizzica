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

ActiveRecord::Schema.define(:version => 20130412191748) do

  create_table "aromas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aromas_beers", :id => false, :force => true do |t|
    t.integer "aroma_id"
    t.integer "beer_id"
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.integer  "manufacturer_id"
    t.decimal  "strength"
    t.integer  "container_id"
    t.integer  "lid_id"
    t.integer  "added_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "volume"
    t.text     "description"
    t.string   "imagebeer_file_name"
    t.string   "imagebeer_content_type"
    t.integer  "imagebeer_file_size"
    t.datetime "imagebeer_updated_at"
    t.decimal  "price"
  end

  create_table "beers_beerstyles", :id => false, :force => true do |t|
    t.integer "beer_id"
    t.integer "beerstyle_id"
  end

  create_table "beers_colors", :id => false, :force => true do |t|
    t.integer "beer_id"
    t.integer "color_id"
  end

  create_table "beers_foams", :id => false, :force => true do |t|
    t.integer "beer_id"
    t.integer "foam_id"
  end

  create_table "beers_tastes", :id => false, :force => true do |t|
    t.integer "beer_id"
    t.integer "taste_id"
  end

  create_table "beerstyles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "containers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ingredientimage_file_name"
    t.string   "ingredientimage_content_type"
    t.integer  "ingredientimage_file_size"
    t.datetime "ingredientimage_updated_at"
  end

  create_table "ingredients_sandwiches", :id => false, :force => true do |t|
    t.integer "ingredient_id"
    t.integer "sandwich_id"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iid"
  end

  create_table "lids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordercontents", :id => false, :force => true do |t|
    t.integer  "orderid"
    t.integer  "itemid"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "user_id"
    t.text     "addr"
    t.datetime "time"
    t.string   "status"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "telephone"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sandwiches", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price"
  end

  create_table "tastes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "views", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], :name => "index_views_on_email", :unique => true
  add_index "views", ["reset_password_token"], :name => "index_views_on_reset_password_token", :unique => true

end
