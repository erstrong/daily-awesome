class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :tags, :users
  end
end
