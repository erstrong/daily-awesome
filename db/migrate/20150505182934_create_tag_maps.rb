class CreateTagMaps < ActiveRecord::Migration
  def change
    create_table :tag_maps do |t|
      t.references :entry, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
    add_foreign_key :tag_maps, :entries
    add_foreign_key :tag_maps, :tags
  end
end
