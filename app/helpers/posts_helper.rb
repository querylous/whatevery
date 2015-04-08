module PostsHelper
  def current_ep
    if Post.all.order("id asc").limit(20).where("file_link IS NOT NULL").first.nil?
      return "#"
    else
      return Post.all.order("id asc").limit(20).where("file_link IS NOT NULL").first
    end
  end
end
