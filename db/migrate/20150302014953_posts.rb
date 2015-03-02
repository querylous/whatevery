class Posts < ActiveRecord::Migration
  def change
   create_table(:posts) do |t|
    t.string :title
    t.text :notes
    t.text :sponsor
    t.boolean :posted
    t.text :guests
    t.string :file_link
  end
end
end
