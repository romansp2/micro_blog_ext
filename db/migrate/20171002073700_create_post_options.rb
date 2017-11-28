class CreatePostOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :post_options, force: true do |t|
      t.references :post, index: true, foreign_key: { to_table: :posts }
      t.string :option_key, default: '', null: false
      t.text :option_value

      t.timestamps
    end
  end
end
