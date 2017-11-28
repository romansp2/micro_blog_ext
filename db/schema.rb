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

ActiveRecord::Schema.define(version: 20171003074721) do

  create_table "comment_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "comment_id"
    t.string "option_key", default: "", null: false
    t.text "option_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comment_options_on_comment_id"
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.bigint "comment_author", default: 0, null: false
    t.string "comment_author_email"
    t.string "comment_author_url", default: "", null: false
    t.string "comment_author_ip", default: "", null: false
    t.text "comment_content"
    t.integer "comment_karma", default: 0, null: false
    t.string "comment_approved", default: "", null: false
    t.string "comment_agent", default: "", null: false
    t.string "comment_type", default: "", null: false
    t.bigint "comment_parent", default: 0, null: false
    t.datetime "comment_approved_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_approved_date"], name: "index_comments_on_comment_approved_date"
    t.index ["comment_author_email"], name: "index_comments_on_comment_author_email"
    t.index ["comment_parent"], name: "index_comments_on_comment_parent"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.string "link_url", default: "", null: false
    t.string "link_name", default: "", null: false
    t.string "link_image", default: "", null: false
    t.string "link_target", default: "", null: false
    t.string "link_description", default: "", null: false
    t.string "link_visible", default: "", null: false
    t.integer "link_rating", default: 0, null: false
    t.string "link_rel", default: "", null: false
    t.text "link_notes"
    t.string "link_rss", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_links_on_user_id"
  end

  create_table "options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "option_name"
    t.text "option_value"
    t.string "autoload", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_name"], name: "index_options_on_option_name"
  end

  create_table "post_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "post_id"
    t.string "option_key", default: "", null: false
    t.text "option_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_options_on_post_id"
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "post_title", null: false
    t.string "post_name"
    t.text "post_excerpt"
    t.text "post_content"
    t.string "post_status", default: "", null: false
    t.bigint "user_id"
    t.string "post_password", default: "", null: false
    t.text "post_content_filtered"
    t.bigint "post_parent", default: 0, null: false
    t.string "post_type", default: "", null: false
    t.string "post_mime_type", default: "", null: false
    t.text "to_ping"
    t.text "pinged"
    t.string "guid", default: "", null: false
    t.integer "menu_order", default: 0, null: false
    t.bigint "comment_count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_name"], name: "index_posts_on_post_name"
    t.index ["post_parent"], name: "index_posts_on_post_parent"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "term_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "term_id"
    t.string "option_key", default: "", null: false
    t.text "option_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_term_options_on_term_id"
  end

  create_table "term_relationships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "term_taxonomy_id"
    t.integer "term_order", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_taxonomy_id"], name: "index_term_relationships_on_term_taxonomy_id"
  end

  create_table "term_taxonomies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "term_id"
    t.string "taxonomy", default: "", null: false
    t.text "description"
    t.bigint "parent", default: 0, null: false
    t.bigint "count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_term_taxonomies_on_term_id"
  end

  create_table "terms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", default: "", null: false
    t.string "slug", default: "", null: false
    t.bigint "term_group", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_terms_on_name"
    t.index ["slug"], name: "index_terms_on_slug"
  end

  create_table "user_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.string "option_key", default: "", null: false
    t.text "option_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_options_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "user_login", default: "", null: false
    t.string "user_nicename", default: "", null: false
    t.string "user_url", default: "", null: false
    t.string "display_name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_login"], name: "index_users_on_user_login"
    t.index ["user_nicename"], name: "index_users_on_user_nicename"
  end

  add_foreign_key "comment_options", "comments"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "links", "users"
  add_foreign_key "post_options", "posts"
  add_foreign_key "term_options", "terms"
  add_foreign_key "term_relationships", "term_taxonomies"
  add_foreign_key "term_taxonomies", "terms"
  add_foreign_key "user_options", "users"
end
