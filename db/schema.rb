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

ActiveRecord::Schema.define(version: 20161005230229) do

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "homepage"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.integer  "release_year"
    t.string   "imdb_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "producer_id"
    t.index ["producer_id"], name: "index_films_on_producer_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.text     "greeting"
    t.text     "mission_statement"
    t.date     "activation_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "reviewers", force: :cascade do |t|
    t.string   "handle"
    t.string   "phone"
    t.string   "status"
    t.integer  "years_active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.decimal  "stars"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "film_id"
    t.index ["film_id"], name: "index_reviews_on_film_id"
  end

  create_table "talent_agents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.text     "pitch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
