class CreateCommentOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_options, force: true do |t|
      t.references :comment, index: true, foreign_key: { to_table: :comments }
      t.string :option_key, default: '', null: false
      t.text :option_value

      t.timestamps
    end
  end
end
