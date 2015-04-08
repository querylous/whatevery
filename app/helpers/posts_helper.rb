module PostsHelper
  def current_ep
    Post.all.order("id asc").limit(20).where("file_link IS NOT NULL").first
  end
end
