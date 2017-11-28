class CreateTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :terms, force: true do |t|
      t.string :name, index: true, default: '', null: false
      t.string :slug, unique: true, index: true, default: '', null: false
      t.bigint :term_group, default: 0, null: false

      t.timestamps
    end
  end
end
