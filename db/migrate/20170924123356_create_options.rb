class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options, force: true do |t|
      t.string :option_name, unique: true, index: true
      t.text :option_value
      t.string :autoload, default: '', null: false

      t.timestamps
    end
  end
end
