class AddUserRefToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :user 
  end
end
