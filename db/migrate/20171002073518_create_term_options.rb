class CreateTermOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :term_options, force: true do |t|
      t.references :term, index: true, foreign_key: { to_table: :terms }
      t.string :option_key, default: '', null: false
      t.text :option_value

      t.timestamps
    end
  end
end
