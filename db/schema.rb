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

ActiveRecord::Schema[7.1].define(version: 2024_06_03_135617) do
  create_table "friendships", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "friend_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["member_id", "friend_id"], name: "index_friendships_on_member_id_and_friend_id", unique: true
    t.index ["member_id"], name: "index_friendships_on_member_id"
  end

  create_table "headings", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "level"
    t.string "content_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_headings_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "password"
  end

  add_foreign_key "friendships", "members"
  add_foreign_key "headings", "members"
end
