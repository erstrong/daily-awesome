class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :body
      t.references :user, index: true
      t.references :topic, index: true

      t.timestamps null: false
    end
    add_foreign_key :entries, :users
    add_foreign_key :entries, :topics
  end
end
