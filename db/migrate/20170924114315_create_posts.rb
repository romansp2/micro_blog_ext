class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts, force: true do |t|
      t.text :post_title, null: false
      t.string :post_name, unique: true, index: true
      t.text :post_excerpt
      t.text :post_content
      t.string :post_status, default: '', null: false
      t.bigint :user_id, index: true
      t.string :post_password, default: '', null: false
      t.text :post_content_filtered
      t.bigint :post_parent, index: true, default: 0, null: false
      t.string :post_type, default: '', null: false
      t.string :post_mime_type, default: '', null: false
      t.text :to_ping
      t.text :pinged
      t.string :guid, default: '', null: false
      t.integer :menu_order, default: 0, null: false
      t.bigint :comment_count, default: 0, null: false

      t.timestamps
    end
  end
end
