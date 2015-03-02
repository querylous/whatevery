class AddUserRefToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user, :posts
  end
end
