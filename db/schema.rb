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

ActiveRecord::Schema.define(:version => 20111212213619) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["profile_id"], :name => "index_customers_on_profile_id"

  create_table "domains", :force => true do |t|
    t.string   "host"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "domains", ["customer_id"], :name => "index_domains_on_customer_id"

  create_table "keywords", :force => true do |t|
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "text"
  end

  add_index "keywords", ["customer_id"], :name => "index_keywords_on_customer_id"

  create_table "links", :force => true do |t|
    t.string   "url"
    t.integer  "customer_id"
    t.integer  "domain_id"
    t.integer  "keyword_id"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["customer_id"], :name => "index_links_on_customer_id"
  add_index "links", ["domain_id"], :name => "index_links_on_domain_id"
  add_index "links", ["keyword_id"], :name => "index_links_on_keyword_id"
  add_index "links", ["state_id"], :name => "index_links_on_state_id"

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
