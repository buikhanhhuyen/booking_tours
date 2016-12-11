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
    t.integer  "status",      default: 0
    t.float    "total_price"
    t.integer  "user_id"
    t.integer  "tour_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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
    t.integer  "percent"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "status",      default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "description"
    t.float    "amount"
    t.string   "email"
    t.string   "customer_token"
    t.string   "charge_token"
    t.integer  "status"
    t.integer  "booking_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.string   "start_place"
    t.string   "end_place"
    t.float    "price"
    t.integer  "currency"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "min_visitors"
    t.integer  "max_visitors"
    t.integer  "seat"
    t.integer  "status",              default: 0
    t.string   "accommodation"
    t.string   "meals"
    t.string   "transport"
    t.string   "additional_services"
    t.integer  "place_id"
    t.integer  "category_id"
    t.integer  "discount_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["category_id"], name: "index_tours_on_category_id"
    t.index ["discount_id"], name: "index_tours_on_discount_id"
    t.index ["place_id"], name: "index_tours_on_place_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.integer  "role",                   default: 1
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
    t.datetime "birthday"
    t.string   "email"
    t.string   "address"
    t.string   "phone_number"
    t.boolean  "gender"
    t.integer  "booking_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["booking_id"], name: "index_visitors_on_booking_id"
  end

end
