class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, force: true do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.references :post, index: true, foreign_key: { to_table: :posts }
      t.bigint :comment_author, default: 0, null: false
      t.string :comment_author_email, index: true
      t.string :comment_author_url, default: '', null: false
      t.string :comment_author_ip, default: '', null: false
      t.text :comment_content
      t.integer :comment_karma, default: 0, null: false
      t.string :comment_approved, default: '', null: false
      t.string :comment_agent, default: '', null: false
      t.string :comment_type, default: '', null: false
      t.bigint :comment_parent, index: true, default: 0, null: false
      t.datetime :comment_approved_date, index: true, default: -> { 'CURRENT_TIMESTAMP' }, null: false

      t.timestamps
    end
  end
end
