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

ActiveRecord::Schema.define(version: 20161104033958) do

  create_table "activities", force: :cascade do |t|
    t.integer  "action_type"
    t.integer  "user_id"
    t.string   "activable_type"
    t.integer  "activable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["activable_type", "activable_id"], name: "index_activities_on_activable_type_and_activable_id"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "status"
    t.float    "total_price"
    t.integer  "user_id"
    t.integer  "tour_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["tour_id"], name: "index_bookings_on_tour_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "parent_comment_id"
    t.integer  "user_id"
    t.integer  "review_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.index ["review_id"], name: "index_comments_on_review_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string   "name"
    t.float    "percent"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "booking_id"
    t.integer  "tour_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["booking_id"], name: "index_discounts_on_booking_id"
    t.index ["tour_id"], name: "index_discounts_on_tour_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "likable_type"
    t.integer  "likable_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["likable_id", "user_id"], name: "index_likes_on_likable_id_and_user_id", unique: true
    t.index ["likable_type", "likable_id"], name: "index_likes_on_likable_type_and_likable_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string   "content"
    t.float    "amount"
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.integer  "booking_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["receiver_id"], name: "index_payments_on_receiver_id"
    t.index ["sender_id", "receiver_id"], name: "index_payments_on_sender_id_and_receiver_id", unique: true
    t.index ["sender_id"], name: "index_payments_on_sender_id"
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "tour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id"], name: "index_rates_on_tour_id"
    t.index ["user_id", "tour_id"], name: "index_rates_on_user_id_and_tour_id", unique: true
    t.index ["user_id"], name: "index_rates_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_reviews_on_place_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string   "name"
    t.string   "startPlace"
    t.string   "endPlace"
    t.text     "description"
    t.float    "price"
    t.float    "rating"
    t.datetime "startDate"
    t.datetime "endDate"
    t.integer  "status"
    t.integer  "place_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_tours_on_category_id"
    t.index ["place_id"], name: "index_tours_on_place_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.boolean  "is_admin"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visitors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "phone_number"
    t.boolean  "sex"
    t.integer  "booking_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["booking_id"], name: "index_visitors_on_booking_id"
  end

end
