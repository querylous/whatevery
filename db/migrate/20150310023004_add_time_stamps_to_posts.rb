class AddTimeStampsToPosts < ActiveRecord::Migration
  def change_table 
      add_column :posts, :created_at, :datetime
      add_column :posts, :updated_at, :datetime
      add_index :posts, :created_at
      add_index :posts, :updated_at
  end
end
