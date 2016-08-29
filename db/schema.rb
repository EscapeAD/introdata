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

ActiveRecord::Schema.define(version: 20160829192420) do

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors_movies", force: :cascade do |t|
    t.integer "cast_id"
    t.string  "actor_id"
  end

  create_table "contributors", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "repo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "email"
    t.text     "mailing_address"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "name"
    t.integer  "direct_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directs", force: :cascade do |t|
    t.integer  "film_id"
    t.integer  "director_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.integer  "telephone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "invite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "direct_id"
    t.integer  "cast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredents", force: :cascade do |t|
    t.string   "amount"
    t.integer  "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invites", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "guest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number"
    t.date     "date"
    t.integer  "customer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.integer  "telephone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.integer  "ingredent_id"
    t.text     "how_to"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "repos", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "contributor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.date     "date"
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
