class CreateUserOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :user_options, force: true do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.string :option_key, default: '', null: false
      t.text :option_value

      t.timestamps
    end
  end
end
