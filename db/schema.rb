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

ActiveRecord::Schema.define(version: 20150923202813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_providers", force: :cascade do |t|
    t.string   "name"
    t.string   "authURL"
    t.string   "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "github_repositories", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "github_repositories_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "github_repository_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "github_name"
    t.string   "github_email"
    t.string   "github_avatar_url"
    t.string   "github_username"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "githubauthkey"
    t.string   "twitter_name"
    t.string   "twitter_authkey"
    t.string   "venmo_name"
    t.string   "venmo_authkey"
  end

end
