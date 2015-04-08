module PostsHelper
  def current_ep
    if Post.all.order("id asc").limit(20).where("file_link IS NOT ?", "").first.nil?
      return "#"
    else
      return Post.all.order("id asc").limit(20).where("file_link IS NOT ?", "").first
    end
  end
end
