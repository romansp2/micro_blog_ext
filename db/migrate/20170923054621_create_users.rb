class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, force: true do |t|
      t.string :user_login, unique: true, index: true, default: '', null: false
      t.string :user_nicename, index: true, default: '', null: false
      t.string :user_url, default: '', null: false
      t.string :display_name, default: '', null: false

      t.timestamps
    end
  end
end
