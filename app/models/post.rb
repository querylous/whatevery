class Post < ActiveRecord::Base
   belongs_to :user
   default_scope -> { order(created_at: :desc) }

   validates :title, presence: { message: "The post needs a title." }
   validates :notes, presence: { message: "This post is about something, right?" } 
end
