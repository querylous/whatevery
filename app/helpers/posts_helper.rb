module PostsHelper
  def current_ep
    if Post.all.order("id asc").limit(20).where("file_link IS NOT NULL").first.nil?
      return "#"
    else
      x = Post.all.order("id asc").limit(20).where("file_link IS NOT NULL").first
      return x.file_link
    end
  end
end
