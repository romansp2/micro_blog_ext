class CreateTermRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :term_relationships, force: true do |t|
      t.references :term_taxonomy, index: true, foreign_key: { to_table: :term_taxonomies }
      t.integer :term_order, default: 0, null: false
      t.timestamps
    end
  end
end
