class CreateTermTaxonomies < ActiveRecord::Migration[5.1]
  def change
    create_table :term_taxonomies, force: true do |t|
      t.references :term, index: true, foreign_key: { to_table: :terms }
      t.string :taxonomy, default: '', null: false
      t.text :description
      t.bigint :parent, default: 0, null: false
      t.bigint :count, default: 0, null: false

      t.timestamps
    end
  end
end
