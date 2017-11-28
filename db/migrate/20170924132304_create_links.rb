class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links, force: true do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.string :link_url, default: '', null: false
      t.string :link_name, default: '', null: false
      t.string :link_image, default: '', null: false
      t.string :link_target, default: '', null: false
      t.string :link_description, default: '', null: false
      t.string :link_visible, default: '', null: false
      t.integer :link_rating, default: 0, null: false
      t.string :link_rel, default: '', null: false
      t.text :link_notes
      t.string :link_rss, default: '', null: false

      t.timestamps
    end
  end
end
