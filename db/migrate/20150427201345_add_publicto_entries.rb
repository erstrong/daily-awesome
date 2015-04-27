class AddPublictoEntries < ActiveRecord::Migration
  def change
    add_column :entries, :public, :boolean, default: false
    add_index :entries, :public
  end
end
