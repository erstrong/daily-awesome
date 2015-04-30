class AddDisplayDateToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :display_date, :datetime
    add_index :topics, :display_date
  end
end
